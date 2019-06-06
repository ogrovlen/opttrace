if(typeof exports == "undefined"){
    exports = this;
}

function processTrace(trace)
{
    var jsonTrace = JSON.parse(trace);

    var optSteps = null;
    var select = null;
    var output = "";
    for (var i = 0; i < jsonTrace.steps.length; i++) {
        if (jsonTrace.steps[i].join_optimization) {
            output += "select#" +
                jsonTrace.steps[i].join_optimization["select#"] + ":\n";
            optSteps = jsonTrace.steps[i].join_optimization.steps;
            output = processSelect(optSteps, output);
            output += "\n";
        }
    }
    return output;
}

function processSelect(optSteps, output)
{
    var execPlans = null;
    for (var i = 0; i < optSteps.length; i++) {
        if (optSteps[i].considered_execution_plans) {
            execPlans = optSteps[i].considered_execution_plans;
            break;
        }
    }

    if (!execPlans) return output;

    output += "Table AccessType:IndexName Rows/Cost TotalRows/TotalCost\n";
    output += "--------------------------------------------------------\n";
    // List const tables first
    for (var i = 0; i < execPlans[0].plan_prefix.length; i++)
        output += "(" + execPlans[0].plan_prefix[i] + " const)\n";
    for (var i=0; i < execPlans.length; i++) {
        output = processTable(execPlans[i], output, 0);
    }

    return output;
}

function processTable(trace, output, indent)
{
    if (!trace || !trace.table) return output;

    // Do not include tables that failed the eq_ref extension test.
    // They will show up later.
    if ("added_to_eq_ref_extension" in trace) {
        if (!trace.added_to_eq_ref_extension) return output;
    }

    // Indentation level for table
    for (var i=0; i < indent; i++) output += " ";

    output += trace.table;

    // Find the chosen access path.  TODO: Handle index merge etc.
    if ("best_access_path" in trace) {
        var accessPath = trace.best_access_path.considered_access_paths;
        var best = null;
        for (var i = 0; i < accessPath.length; i++) {
            if (accessPath[i].chosen) best = accessPath[i];
        }
    }
    if (best) {
        output += " " + best.access_type;
        switch (best.access_type) {
        case "scan":
            var rows = best.rows_to_scan;  // 5.7
            if (rows == undefined)
                rows = best.rows; // 5.6
            output += " " + rows + "/" + best.cost;
            break;
        case "eq_ref":
        case "ref":
            output += ":" + best.index;
            output += " " + best.rows + "/" + best.cost;
            break;
        case "range":
            if (best.range_details)  {    // 5.7
                output += ":" + best.range_details.used_index;
                output += " " + best.rows_to_scan + "/" + best.cost;
            } else    // 5.6
                output += " " + best.rows + "/" + best.cost;
            break;
        default:
            break;
        }
    }
    output += " " + trace.rows_for_plan + '/' + trace.cost_for_plan;

    if (trace.added_to_eq_ref_extension) output += " eq_ref-extended";

    // Semi-join strategies
    sj_strategy = trace.semijoin_strategy_choice;
    if (sj_strategy) {
        for (var i = 0; i < sj_strategy.length; i++) {
            if (i == 0) output += " Semijoin(";
            else output += " ";

            switch (sj_strategy[i].strategy) {
            case "FirstMatch":
                output += "FM:";
                break;
            case "MaterializeLookup":
                output += "ML:";
                break;
            case "MaterializeScan":
                if (sj_strategy[i].choice == "deferred") continue;
                output += "MS:";
                break;
            case "LooseScan":
                // Cost for LooseScan is not traced unless it is chosen
                if (!sj_strategy[i].chosen) continue;
                output += "LS:";
                break;
            case "DuplicatesWeedout":
                output += "DW:";
                break;
            }
            output += sj_strategy[i].rows + "/" + sj_strategy[i].cost;
        }  // for-loop
        if (sj_strategy.length > 0) output += ")";
    } // if sj_strategy

    if (trace.pruned_by_cost) {
        output += " PRUNED(cost)\n";
    } else if (trace.pruned_by_heuristic) {
        output += " PRUNED(heuristic)\n";
    } else if (trace.pruned_by_eq_ref_heuristic) {
        output += " PRUNED(eq_ref_heuristic)\n";
    } else if ("rest_of_plan" in trace) {
        output += "\n";
        var restOfPlan = trace.rest_of_plan;
        for (var i = 0; i < restOfPlan.length; i++) {
            output = processTable(restOfPlan[i], output, indent+2);
        }
    } else if (trace.chosen) {
        if (trace.new_cost_for_plan) {
            output += " Sort cost: " + trace.sort_cost;
            output += " Total cost: " + trace.new_cost_for_plan;
        }
        output += " *** NEW BEST PLAN ***\n";
    } else {
        output += " REJECTED(cost)\n";
    }
    return output;
}

exports.processTrace = processTrace;

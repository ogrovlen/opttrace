// Process each JSON object of the input file as a seperate optimizer trace.
// Used to process the result files in the MYSQL opt_trace test suite.
// These files contains traces for multiple queries.

function findJSONobject(text)
{
    var len = text.length;
    var pos = 0;
    var braces= 0;
    while (pos < len)
    {
        switch (text[pos]) {
        case '{':
            ++braces;
            break;
        case '}':
            if (--braces == 0)
                return pos;
            break;
        default:
            break;
        }
        ++pos;
    }
    return pos;
}

var fs = require('fs');
var script = require('./trace');
fs.readFile(process.argv[2], 'utf8', function(err, text) {
    if (err) {
        return console.log(err);
    }
    while (text.length > 0)
    {
        startPos = text.indexOf("\"steps\": [");
        if (startPos < 0) break

        start = "{\n" + text.substring(startPos);
        endPos = findJSONobject(start);
        trace = start.substring(0, endPos+1);
        output = script.processTrace(trace);
        console.log(output);
        console.log("======================================================\n");
        text = start.substr(endPos+1);
    }
    return;
});

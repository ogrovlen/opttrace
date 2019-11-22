select#1:
No trace for greedy search!


======================================================


======================================================


======================================================

select#1:
No trace for greedy search!


======================================================

select#1:
No trace for greedy search!


======================================================


======================================================

select#1:
No trace for greedy search!


======================================================


======================================================


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 2/0.7009 2/0.7009 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 4/0.9017 4/0.9017
  `t2` scan 4/2.1017 16/3.0034
    `t3` scan 4/2.4021 16/5.4056 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 2/0.7024 2/0.7024
  `t3` scan 1/0.7012 2/1.4037
    `t2` scan 2/0.9025 4/2.3062 Sort cost: 4 Total cost: 6.3062 *** NEW BEST PLAN ***
  `t2` scan 2/0.9025 4/1.6049 PRUNED(heuristic)


======================================================

select#2:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 3/0.8016 3/0.8016 Sort cost: 3 Total cost: 3.8016 *** NEW BEST PLAN ***

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
 `teeone` scan 3/2.8375 3/2.8375 *** NEW BEST PLAN ***


======================================================


======================================================

select#1:
No trace for greedy search!


======================================================


======================================================


======================================================


======================================================


======================================================


======================================================


======================================================


======================================================


======================================================


======================================================


======================================================


======================================================


======================================================


======================================================

select#1:
No trace for greedy search!


======================================================


======================================================


======================================================


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 2/0.7024 2/0.7024 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
(`t1` `table2` const)
`t3` `table1` scan 2/0.7027 2/0.7027
  `t2` `table3` scan 1/0.7012 2/1.4039 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t0` scan 10/1.5043 10/1.5043 *** NEW BEST PLAN ***

select#2:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 10/1.5055 10/1.5055
  `t2` ref:a 1/3.5 10/5.0055
    `t3` ref:a 1/3.5 10/8.5055 eq_ref-extended *** NEW BEST PLAN ***
`t2` scan 10/1.5055 10/1.5055
  `t1` ref:a 1/3.5 10/5.0055
    `t3` ref:a 1/3.5 10/8.5055 eq_ref-extended PRUNED(cost)
    `t3` ref:a 1/3.5 10/8.5055 PRUNED(cost)
  `t3` ref:a 1/3.5 10/5.0055 PRUNED(heuristic)
`t3` scan 10/1.5055 10/1.5055
  `t1` ref:a 1/3.5 10/5.0055
    `t2` ref:a 1/3.5 10/8.5055 eq_ref-extended PRUNED(cost)
    `t2` ref:a 1/3.5 10/8.5055 PRUNED(cost)
  `t2` ref:a 1/3.5 10/5.0055 PRUNED(heuristic)


======================================================

select#2:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
(`t1` const)
`t3` eq_ref:t3_ID_IDX 1/0.1 1/0.1
  `t2` eq_ref:t2_ID_IDX 1/0.1 1/0.2 eq_ref-extended *** NEW BEST PLAN ***

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
 `tmp` scan 2/2.725 2/2.725 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
(`t3` const)
`t4` ref:PRIMARY 1/0.35 1/0.35
  `t7` `link_alias_142` eq_ref:PRIMARY 1/0.35 1/0.7 eq_ref-extended
    `t6` ref:PRIMARY 1/0.35 1/1.05 eq_ref-extended
      `t1` `link_alias_133` eq_ref:PRIMARY 1/0.35 1/1.4 eq_ref-extended
        `t2` ref:PRIMARY 1/0.35 1/1.75 eq_ref-extended
          `t5` `link_alias_148` eq_ref:PRIMARY 1/0.35 1/2.1 eq_ref-extended *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` `alias1` scan 20/2.5244 18/2.5244
  `t2` `alias2` eq_ref:PRIMARY 1/6.3 18/8.8244 *** NEW BEST PLAN ***


======================================================

select#1:
No trace for greedy search!


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`mysqltest2`.`t2` scan 2/0.7009 2/0.7009
  `t1` scan 3/1.1013 6/1.8022 *** NEW BEST PLAN ***
`t1` scan 3/0.8013 3/0.8013 PRUNED(heuristic)


======================================================


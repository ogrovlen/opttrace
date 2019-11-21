select#1:
No trace for greedy search!

select#2:
No trace for greedy search!


======================================================

select#1:
No trace for greedy search!

select#2:
No trace for greedy search!


======================================================

select#1:
No trace for greedy search!


======================================================

select#1:
No trace for greedy search!


======================================================

select#1:
No trace for greedy search!


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
(`t4` `sq3_alias2` const)
(`t4` `alias3` const)
(`t5` `alias1` const)
`t5` `sq3_alias1` scan 3/0.8085 3/0.8085 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` `table1` range:PRIMARY 2/1.41 2/1.41
  `t1` `table2` scan 2/0.9057 4/2.3157 *** NEW BEST PLAN ***

select#3:
No trace for greedy search!


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`q` ref:<auto_key0> 1/0.35 1/0.35
  `q` `q1` ref:<auto_key0> 1/0.35 1/0.7 *** NEW BEST PLAN ***
`q` `q1` ref:<auto_key0> 1/0.35 1/0.35 PRUNED(heuristic)


======================================================


======================================================


======================================================


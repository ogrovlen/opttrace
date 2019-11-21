select#1:
No trace for greedy search!


======================================================

select#1:
No trace for greedy search!


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`where_subselect_20070` scan 6/1.1048 6/1.1048 *** NEW BEST PLAN ***

select#3:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` `table1` ref:col_int_key 2/0.4558 2/0.4558
  `t1` `table2` ref:col_int_key 2/0.9116 4/1.3674 *** NEW BEST PLAN ***
`t1` `table2` ref:col_int_key 2/0.4558 2/0.4558
  `t1` `table1` ref:col_int_key 2/0.9116 4/1.3674 PRUNED(cost)

select#4:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 4/0.9017 4/0.9017 *** NEW BEST PLAN ***

select#2:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 4/0.9017 4/0.9017 *** NEW BEST PLAN ***


======================================================

select#1:
No trace for greedy search!


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 1000/101 1000/101 *** NEW BEST PLAN ***


======================================================


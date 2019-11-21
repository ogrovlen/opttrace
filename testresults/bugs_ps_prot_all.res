select#1:
No trace for greedy search!


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
(`where_subselect_19033` const)
`t1` scan 1/0.6012 1/0.6012 Semijoin(FM:1/0.6012 ML:1/1.8012 DW:1/1.8012) *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`where_subselect_20070` scan 6/1.1048 6/1.1048
  `t1` `table1` ref:col_int_key 2/2.7349 12/3.8396
    `t1` `table2` scan 4/5.3021 12/9.1418 Semijoin(FM:6/9.3094 ML:6/6.2297 DW:6/11.942) *** NEW BEST PLAN ***
  `t1` `table2` ref:col_int_key 2/2.7349 12/3.8396
    `t1` `table1` scan 4/5.3021 12/9.1418 Semijoin(FM:6/9.3094 ML:6/6.2297 DW:6/11.942) PRUNED(cost)
`t1` `table1` scan 4/0.9017 4/0.9017
  `where_subselect_20070` scan 6/2.9048 4/3.8065
    `t1` `table2` ref:col_int_key 2/1.8233 8/5.6298 Semijoin(DW:1/7.5298) PRUNED(cost)
  `t1` `table2` ref:col_int_key 2/1.8233 8/2.725 Semijoin()
    `where_subselect_20070` scan 6/5.3049 8/8.0299 Semijoin( MS:1/7.8298 DW:1/9.9299) PRUNED(cost)
`t1` `table2` scan 4/0.9017 4/0.9017
  `where_subselect_20070` scan 6/2.9048 4/3.8065
    `t1` `table1` ref:col_int_key 2/1.8233 8/5.6298 Semijoin(DW:1/7.5298) PRUNED(cost)
  `t1` `table1` ref:col_int_key 2/1.8233 8/2.725 Semijoin()
    `where_subselect_20070` scan 6/5.3049 8/8.0299 Semijoin(LS:1/7.7956 MS:1/7.8298 DW:1/9.9299) PRUNED(cost)


======================================================

select#1:
No trace for greedy search!


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 1000/101 1000/101 *** NEW BEST PLAN ***


======================================================


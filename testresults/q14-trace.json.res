select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`lineitem` range:i_l_shipdate 141506/63690 141506/63690
  `part` eq_ref:PRIMARY 1/49527 141506/113217 *** NEW BEST PLAN ***
`part` scan 200000/20489 200000/20489
  `lineitem` ref:i_l_partkey_suppkey 30.006/2100000 6000000/2120000 PRUNED(cost)



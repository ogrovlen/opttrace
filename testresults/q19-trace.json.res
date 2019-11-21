select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`part` scan 200000/20489 2654.6/20489
  `lineitem` ref:i_l_partkey_suppkey 30.006/27886 79653/48375 *** NEW BEST PLAN ***
`lineitem` scan 6001215/613022 39911/613022 PRUNED(cost)



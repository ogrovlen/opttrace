select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`part` scan 200000/20489 2000/20489
  `lineitem` ref:i_l_partkey_suppkey 30.006/21010 60012/41499 *** NEW BEST PLAN ***
`lineitem` scan 6001215/613022 6000000/613022 PRUNED(cost)

select#2:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`lineitem` ref:i_l_partkey_suppkey 30.006/10.505 30.006/10.505 *** NEW BEST PLAN ***



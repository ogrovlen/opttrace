select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`nation` scan 25/2.75 2.5/2.75
  `supplier` ref:i_s_nationkey 400/350 1000/352.75
    `orders` scan 1500000/15100000 150000000/15100000
      `lineitem` `l1` ref:i_l_suppkey 1.0002/52500000 50000000/67700000 *** NEW BEST PLAN ***
    `lineitem` `l1` ref:i_l_suppkey 600.12/210095 200021/210448
      `orders` eq_ref:PRIMARY 1/70007 20002/280455 *** NEW BEST PLAN ***
  `orders` scan 1500000/175474 375000/175476
    `supplier` ref:i_s_nationkey 400/52500000 150000000/52700000 PRUNED(cost)
    `lineitem` `l1` ref:PRIMARY 4.0008/244995 500051/420472 PRUNED(cost)
  `lineitem` `l1` scan 6001215/913060 5000000/913063 PRUNED(cost)
`supplier` scan 10000/1040.2 10000/1040.2
  `nation` scan 25/2502.7 10000/3543
    `orders` scan 1500000/150000000 1500000000/150000000 PRUNED(cost)
    `lineitem` `l1` ref:i_l_suppkey 600.12/2100000 2000000/2100000 PRUNED(cost)
  `orders` scan 1500000/150000000 1500000000/150000000 PRUNED(cost)
  `lineitem` `l1` ref:i_l_suppkey 600.12/2100000 2000000/2100000 PRUNED(cost)
`orders` scan 1500000/152971 150000/152971
  `nation` scan 25/37503 375000/190474
    `supplier` ref:i_s_nationkey 400/52500000 150000000/52700000 PRUNED(cost)
    `lineitem` `l1` ref:PRIMARY 4.0008/244995 500051/435470 PRUNED(cost)
  `supplier` scan 10000/150000000 1500000000/150000000 PRUNED(cost)
  `lineitem` `l1` ref:PRIMARY 4.0008/97998 200021/250969
    `nation` scan 25/50010 500051/300980 PRUNED(cost)
    `supplier` eq_ref:PRIMARY 1/70007 200021/320977 PRUNED(cost)
`lineitem` `l1` scan 6001215/613022 2000000/613022 PRUNED(cost)

select#3:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`lineitem` `l3` ref:PRIMARY 4.0008/0.6533 1.2001/0.6533 *** NEW BEST PLAN ***

select#2:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`lineitem` `l2` ref:PRIMARY 4.0008/0.6533 3.6007/0.6533 *** NEW BEST PLAN ***



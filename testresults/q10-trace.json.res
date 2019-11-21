select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`nation` scan 25/2.75 25/2.75
  `orders` range:i_o_orderdate 111614/1260000 2790000/1260000
    `customer` eq_ref:PRIMARY 1/306938 139518/1560000
      `lineitem` ref:PRIMARY 4.0008/91150 55818/1650000 *** NEW BEST PLAN ***
    `lineitem` ref:PRIMARY 4.0008/1820000 1120000/3080000 PRUNED(cost)
  `customer` ref:i_c_nationkey 6000/48075 150000/48078
    `orders` ref:i_o_custkey 15.001/787531 167428/835609
      `lineitem` ref:PRIMARY 4.0008/109384 66985/944993 *** NEW BEST PLAN ***
    `lineitem` scan 6001215/9010000000 90000000000/9010000000 PRUNED(cost)
  `lineitem` scan 6001215/2050000 15000000/2050000 PRUNED(cost)
`orders` range:i_o_orderdate 111614/50227 111614/50227
  `nation` scan 25/279035 2790000/329262
    `customer` eq_ref:PRIMARY 1/306938 139518/636200
      `lineitem` ref:PRIMARY 4.0008/91150 55818/727350 *** NEW BEST PLAN ***
    `lineitem` ref:PRIMARY 4.0008/1820000 1120000/2150000 PRUNED(cost)
  `customer` eq_ref:PRIMARY 1/39065 111614/89291
    `nation` eq_ref:PRIMARY 1/39065 111614/128356 eq_ref-extended
      `lineitem` ref:PRIMARY 4.0008/72920 44655/201276 *** NEW BEST PLAN ***
  `lineitem` ref:PRIMARY 4.0008/72920 44655/123146
    `nation` scan 25/111637 1120000/234783 PRUNED(cost)
    `customer` eq_ref:PRIMARY 1/15629 44655/138775
      `nation` eq_ref:PRIMARY 1/15629 44655/154405 eq_ref-extended *** NEW BEST PLAN ***
`customer` scan 150000/15441 150000/15441
  `nation` eq_ref:PRIMARY 1/52500 150000/67941
    `orders` ref:i_o_custkey 15.001/787531 167428/855472 PRUNED(cost)
    `lineitem` scan 6001215/9010000000 90000000000/9010000000 PRUNED(cost)
  `orders` ref:i_o_custkey 15.001/787531 167428/802972 PRUNED(cost)
  `lineitem` scan 6001215/9010000000 90000000000/9010000000 PRUNED(cost)
`lineitem` scan 6001215/613022 600122/613022 PRUNED(cost)



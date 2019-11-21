select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`customer` scan 150000/15441 15000/15441
  `orders` ref:i_o_custkey 15.001/78753 112505/94194
    `lineitem` ref:PRIMARY 4.0008/73502 225055/167696 *** NEW BEST PLAN ***
  `lineitem` scan 6001215/4500000000 45000000000/4500000000 PRUNED(cost)
`orders` scan 1500000/152971 750000/152971
  `customer` eq_ref:PRIMARY 1/262500 75000/415471 PRUNED(cost)
  `lineitem` ref:PRIMARY 4.0008/489991 1500000/642962 PRUNED(cost)
`lineitem` scan 6001215/613022 3000000/613022 PRUNED(cost)



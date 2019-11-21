select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`customer` scan 150000/15441 150000/15441
  `orders` ref:i_o_custkey 15.001/787531 2250000/802972
    `lineitem` ref:i_l_orderkey_quantity 4.0008/1470000 9000000/2270000 *** NEW BEST PLAN ***
  `lineitem` scan 6001215/90000000000 900000000000/90000000000 PRUNED(cost)
`orders` scan 1500000/152971 1500000/152971
  `customer` eq_ref:PRIMARY 1/525000 1500000/677971
    `lineitem` ref:i_l_orderkey_quantity 4.0008/977904 6000000/1660000 *** NEW BEST PLAN ***
  `lineitem` ref:i_l_orderkey_quantity 4.0008/977904 6000000/1130000 PRUNED(heuristic)
`lineitem` scan 6001215/613022 6000000/613022
  `customer` scan 150000/90000000000 900000000000/90000000000 PRUNED(cost)
  `orders` eq_ref:PRIMARY 1/2100000 6000000/2710000 PRUNED(cost)

select#2:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`lineitem` scan 6001215/613022 6000000/613022 Sort cost: 6000000 Total cost: 6610000 *** NEW BEST PLAN ***



select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`region` scan 5/0.75 1/0.75
  `nation` ref:i_n_regionkey 5/1.125 5/1.875
    `supplier` ref:i_s_nationkey 400/201.8 2000/203.67
      `customer` ref:i_c_nationkey 6000/1200000 12000000/1200000
        `orders` ref:i_o_custkey 15.001/63000000 55300000/64200000
          `lineitem` ref:i_l_suppkey 1.0002/19400000 55300000/83600000 *** NEW BEST PLAN ***
        `lineitem` ref:i_l_suppkey 600.12/2520000000 7200000000/2520000000 PRUNED(cost)
      `orders` scan 1500000/92300000 922000000/92300000 PRUNED(cost)
      `lineitem` ref:i_l_suppkey 600.12/420190 1200000/420394
        `customer` ref:i_c_nationkey 6000/722000000 7200000000/723000000 PRUNED(cost)
        `orders` eq_ref:PRIMARY 1/420085 368795/840479
          `customer` eq_ref:PRIMARY 1/129078 368795/969557 *** NEW BEST PLAN ***
    `customer` ref:i_c_nationkey 6000/3009.5 30000/3011.4
      `supplier` ref:i_s_nationkey 400/1210000 12000000/1210000 PRUNED(cost)
      `orders` ref:i_o_custkey 15.001/157506 138276/160518
        `supplier` ref:i_s_nationkey 400/5580000 55300000/5740000 PRUNED(cost)
        `lineitem` ref:PRIMARY 4.0008/90338 553214/250856
          `supplier` eq_ref:PRIMARY 1/193625 553214/444481 *** NEW BEST PLAN ***
      `lineitem` scan 6001215/18000000000 180000000000/18000000000 PRUNED(cost)
    `orders` scan 1500000/337339 2300000/337341
      `supplier` ref:i_s_nationkey 400/93000000 922000000/93300000 PRUNED(cost)
      `customer` eq_ref:PRIMARY 1/345675 115225/683016 PRUNED(cost)
      `lineitem` ref:PRIMARY 4.0008/1510000 9220000/1840000 PRUNED(cost)
    `lineitem` scan 6001215/3010000 30000000/3010000 PRUNED(cost)
  `supplier` scan 10000/1040.3 10000/1041
    `nation` eq_ref:PRIMARY 1/3500 2000/4541
      `customer` ref:i_c_nationkey 6000/1200000 12000000/1210000 PRUNED(cost)
      `orders` scan 1500000/92300000 922000000/92300000 PRUNED(cost)
      `lineitem` ref:i_l_suppkey 600.12/420190 1200000/424731
        `customer` ref:i_c_nationkey 6000/722000000 7200000000/723000000 PRUNED(cost)
        `orders` eq_ref:PRIMARY 1/420085 368795/844816 PRUNED(cost)
    `customer` ref:i_c_nationkey 6000/6020000 60000000/6020000 PRUNED(cost)
    `orders` scan 1500000/461000000 4610000000/461000000 PRUNED(cost)
    `lineitem` ref:i_l_suppkey 600.12/2100000 6000000/2100000 PRUNED(cost)
  `customer` scan 150000/15441 150000/15442
    `nation` eq_ref:PRIMARY 1/52500 30000/67942
      `supplier` ref:i_s_nationkey 400/1210000 12000000/1280000 PRUNED(cost)
      `orders` ref:i_o_custkey 15.001/157506 138276/225448
        `supplier` ref:i_s_nationkey 400/5580000 55300000/5810000 PRUNED(cost)
        `lineitem` ref:PRIMARY 4.0008/90338 553214/315786
          `supplier` eq_ref:PRIMARY 1/193625 553214/509411 PRUNED(cost)
      `lineitem` scan 6001215/18000000000 180000000000/18000000000 PRUNED(cost)
    `supplier` ref:i_s_nationkey 400/6050000 60000000/6070000 PRUNED(cost)
    `orders` ref:i_o_custkey 15.001/787532 691378/802973 PRUNED(cost)
    `lineitem` scan 6001215/90000000000 900000000000/90000000000 PRUNED(cost)
  `orders` scan 1500000/152972 460900/152973
    `nation` ref:i_n_regionkey 5/518512 2300000/671485 PRUNED(cost)
    `supplier` scan 10000/461000000 4610000000/461000000 PRUNED(cost)
    `customer` eq_ref:PRIMARY 1/161315 460900/314288
      `nation` eq_ref:PRIMARY 1/161315 92180/475603 eq_ref-extended PRUNED(cost)
      `nation` eq_ref:PRIMARY 1/161315 92180/475603 PRUNED(cost)
      `supplier` ref:i_s_nationkey 400/18600000 184000000/18900000 PRUNED(cost)
      `lineitem` ref:PRIMARY 4.0008/301116 1840000/615403 PRUNED(cost)
    `lineitem` ref:PRIMARY 4.0008/301116 1840000/454088 PRUNED(cost)
  `lineitem` scan 6001215/613022 6000000/613023 PRUNED(cost)
`nation` scan 25/2.75 25/2.75 PRUNED(heuristic)
`supplier` scan 10000/1040.2 10000/1040.2 PRUNED(heuristic)
`customer` scan 150000/15441 150000/15441 PRUNED(heuristic)
`orders` scan 1500000/152971 460900/152971 PRUNED(heuristic)
`lineitem` scan 6001215/613022 6000000/613022 PRUNED(cost)



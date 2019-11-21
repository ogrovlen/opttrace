select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`region` scan 5/0.75 1/0.75
  `nation` `n1` ref:i_n_regionkey 5/0.7511 5/1.5011
    `nation` `n2` scan 25/12.75 125/14.251
      `supplier` ref:i_s_nationkey 400/5044.9 50000/5059.2
        `customer` ref:i_c_nationkey 6000/30100000 300000000/30100000
          `part` scan 200000/600000000000 6000000000000/600000000000
            `orders` ref:i_o_custkey 15.001/32000000000000 45000000000000/32000000000000
              `lineitem` ref:i_l_partkey_suppkey 1/16000000000000 45000000000000/48000000000000 Sort cost: 45000000000000 Total cost: 93000000000000 *** NEW BEST PLAN ***
            `lineitem` ref:i_l_partkey_suppkey 7.5058/16000000000000 45000000000000/16000000000000
              `orders` eq_ref:PRIMARY 1/4500000000000 45000000000000/21000000000000 Sort cost: 45000000000000 Total cost: 66000000000000 *** NEW BEST PLAN ***
          `orders` ref:i_o_custkey 15.001/1580000000 2250000000/1610000000
            `part` scan 200000/4500000000000 45000000000000/4500000000000
              `lineitem` ref:i_l_partkey_suppkey 1/16000000000000 45000000000000/20000000000000 Sort cost: 45000000000000 Total cost: 65000000000000 *** NEW BEST PLAN ***
            `lineitem` ref:i_l_suppkey 1.0002/788000000 2250000000/2390000000
              `part` eq_ref:PRIMARY 1/788000000 2250000000/3180000000 Sort cost: 2250000000 Total cost: 5430000000 *** NEW BEST PLAN ***
          `lineitem` ref:i_l_suppkey 600.12/63000000000 180000000000/63000000000 PRUNED(cost)
        `part` scan 200000/100000000 1000000000/100000000
          `customer` ref:i_c_nationkey 6000/600000000000 6000000000000/600000000000 PRUNED(cost)
          `orders` scan 1500000/75000000000000 750000000000000/75000000000000 PRUNED(cost)
          `lineitem` ref:i_l_partkey_suppkey 7.5058/2630000000 7510000000/2730000000
            `customer` ref:i_c_nationkey 6000/4500000000000 45000000000000/4500000000000 PRUNED(cost)
            `orders` eq_ref:PRIMARY 1/1130000000 3750000000/3850000000
              `customer` eq_ref:PRIMARY 1/563000000 3750000000/4420000000 REJECTED(cost)
        `orders` scan 1500000/3750000000 38000000000/3750000000
          `customer` eq_ref:PRIMARY 1/3750000000 1880000000/7500000000 PRUNED(cost)
          `part` scan 200000/75000000000000 750000000000000/75000000000000 PRUNED(cost)
          `lineitem` ref:i_l_suppkey 1.0002/13000000000 38000000000/17000000000 PRUNED(cost)
        `lineitem` ref:i_l_suppkey 600.12/10500000 30000000/10500000
          `customer` ref:i_c_nationkey 6000/18000000000 180000000000/18000000000 PRUNED(cost)
          `part` eq_ref:PRIMARY 1/4500000 3000000/15000000
            `customer` ref:i_c_nationkey 6000/1810000000 18000000000/1820000000
              `orders` eq_ref:PRIMARY 1/1800000000 18000000000/3620000000 REJECTED(cost)
            `orders` eq_ref:PRIMARY 1/450091 1500000/15500000
              `customer` eq_ref:PRIMARY 1/225046 1500000/15700000 Sort cost: 1500000 Total cost: 17200000 *** NEW BEST PLAN ***
          `orders` eq_ref:PRIMARY 1/4500000 15000000/15000000 PRUNED(heuristic)
      `customer` ref:i_c_nationkey 6000/75237 750000/75251
        `supplier` ref:i_s_nationkey 400/30300000 300000000/30300000 PRUNED(cost)
        `part` scan 200000/1500000000 15000000000/1500000000 PRUNED(cost)
        `orders` ref:i_o_custkey 15.001/3940000 5630000/4010000
          `supplier` ref:i_s_nationkey 400/227000000 2250000000/231000000 PRUNED(cost)
          `part` scan 200000/11000000000 110000000000/11000000000 PRUNED(cost)
          `lineitem` ref:PRIMARY 4.0008/3680000 22500000/7690000
            `supplier` eq_ref:PRIMARY 1/2480000 1130000/10200000
              `part` eq_ref:PRIMARY 1/123780 1130000/10300000 Sort cost: 1130000 Total cost: 11400000 *** NEW BEST PLAN ***
            `part` eq_ref:PRIMARY 1/2480000 2250000/10200000 PRUNED(heuristic)
        `lineitem` scan 6001215/450000000000 4500000000000/450000000000 PRUNED(cost)
      `part` scan 200000/268527 2500000/268541
        `supplier` ref:i_s_nationkey 400/101000000 1000000000/101000000 PRUNED(cost)
        `customer` ref:i_c_nationkey 6000/1500000000 15000000000/1510000000 PRUNED(cost)
        `orders` scan 1500000/190000000000 1900000000000/190000000000 PRUNED(cost)
        `lineitem` ref:i_l_partkey_suppkey 30.006/26300000 75000000/26500000 PRUNED(cost)
      `orders` scan 1500000/9450000 93800000/9450000
        `supplier` ref:i_s_nationkey 400/3780000000 38000000000/3790000000 PRUNED(cost)
        `customer` eq_ref:PRIMARY 1/9560000 4690000/19000000 PRUNED(cost)
        `part` scan 200000/190000000000 1900000000000/190000000000 PRUNED(cost)
        `lineitem` ref:PRIMARY 4.0008/61200000 375000000/70700000 PRUNED(cost)
      `lineitem` scan 6001215/75000000 750000000/75000000 PRUNED(cost)
    `supplier` scan 10000/5040.3 50000/5041.8
      `nation` `n2` eq_ref:PRIMARY 1/7500 50000/12542
        `customer` ref:i_c_nationkey 6000/30100000 300000000/30100000 PRUNED(cost)
        `part` scan 200000/100000000 1000000000/100000000 PRUNED(cost)
        `orders` scan 1500000/3750000000 38000000000/3750000000 PRUNED(cost)
        `lineitem` ref:i_l_suppkey 600.12/10500000 30000000/10500000
          `customer` ref:i_c_nationkey 6000/18000000000 180000000000/18000000000 PRUNED(cost)
          `part` eq_ref:PRIMARY 1/4500000 3000000/15000000 PRUNED(cost)
          `orders` eq_ref:PRIMARY 1/4500000 15000000/15000000 PRUNED(cost)
      `customer` ref:i_c_nationkey 6000/30100000 300000000/30100000 PRUNED(cost)
      `part` scan 200000/100000000 1000000000/100000000 PRUNED(cost)
      `orders` scan 1500000/3750000000 38000000000/3750000000 PRUNED(cost)
      `lineitem` ref:i_l_suppkey 600.12/10500000 30000000/10500000 PRUNED(heuristic)
    `customer` ref:i_c_nationkey 6000/3009.5 30000/3011
      `nation` `n2` scan 25/75000 750000/78011
        `supplier` ref:i_s_nationkey 400/30300000 300000000/30300000 PRUNED(cost)
        `part` scan 200000/1500000000 15000000000/1500000000 PRUNED(cost)
        `orders` ref:i_o_custkey 15.001/3940000 5630000/4020000
          `supplier` ref:i_s_nationkey 400/227000000 2250000000/231000000 PRUNED(cost)
          `part` scan 200000/11000000000 110000000000/11000000000 PRUNED(cost)
          `lineitem` ref:PRIMARY 4.0008/3680000 22500000/7690000
            `supplier` eq_ref:PRIMARY 1/2480000 1130000/10200000
              `part` eq_ref:PRIMARY 1/123780 1130000/10300000 REJECTED(cost)
            `part` eq_ref:PRIMARY 1/2480000 2250000/10200000 PRUNED(heuristic)
        `lineitem` scan 6001215/450000000000 4500000000000/450000000000 PRUNED(cost)
      `supplier` scan 10000/30000000 300000000/30000000 PRUNED(cost)
      `part` scan 200000/60000000 600000000/60000000 PRUNED(cost)
      `orders` ref:i_o_custkey 15.001/157506 225009/160517
        `nation` `n2` scan 25/562524 5630000/723041
          `supplier` ref:i_s_nationkey 400/227000000 2250000000/228000000 PRUNED(cost)
          `part` scan 200000/11000000000 110000000000/11000000000 PRUNED(cost)
          `lineitem` ref:PRIMARY 4.0008/3680000 22500000/4400000
            `supplier` eq_ref:PRIMARY 1/2480000 1130000/6870000
              `part` eq_ref:PRIMARY 1/123780 1130000/7000000 Sort cost: 1130000 Total cost: 8120000 *** NEW BEST PLAN ***
            `part` eq_ref:PRIMARY 1/2480000 2250000/6870000 PRUNED(heuristic)
        `supplier` scan 10000/225000000 2250000000/225000000 PRUNED(cost)
        `part` scan 200000/450000000 4500000000/450000000 PRUNED(cost)
        `lineitem` ref:PRIMARY 4.0008/147003 900218/307520
          `nation` `n2` scan 25/2250000 22500000/2560000
            `supplier` eq_ref:PRIMARY 1/2480000 1130000/5030000
              `part` eq_ref:PRIMARY 1/123780 1130000/5160000 Sort cost: 1130000 Total cost: 6280000 *** NEW BEST PLAN ***
            `part` eq_ref:PRIMARY 1/2480000 2250000/5030000 PRUNED(heuristic)
          `supplier` eq_ref:PRIMARY 1/315076 900218/622597
            `nation` `n2` eq_ref:PRIMARY 1/315076 900218/937673 eq_ref-extended
              `part` eq_ref:PRIMARY 1/315076 900218/1250000 eq_ref-extended Sort cost: 900218 Total cost: 2150000 *** NEW BEST PLAN ***
      `lineitem` scan 6001215/18000000000 180000000000/18000000000 PRUNED(cost)
    `part` scan 200000/28490 100000/28491
      `nation` `n2` scan 25/250001 2500000/278492
        `supplier` ref:i_s_nationkey 400/101000000 1000000000/101000000 PRUNED(cost)
        `customer` ref:i_c_nationkey 6000/1500000000 15000000000/1510000000 PRUNED(cost)
        `orders` scan 1500000/190000000000 1900000000000/190000000000 PRUNED(cost)
        `lineitem` ref:i_l_partkey_suppkey 30.006/26300000 75000000/26500000 PRUNED(cost)
      `supplier` scan 10000/100000000 1000000000/100000000 PRUNED(cost)
      `customer` ref:i_c_nationkey 6000/60200000 600000000/60200000 PRUNED(cost)
      `orders` scan 1500000/7500000000 75000000000/7500000000 PRUNED(cost)
      `lineitem` ref:i_l_partkey_suppkey 30.006/1050000 3000000/1080000
        `nation` `n2` scan 25/7500000 75000000/8580000 PRUNED(cost)
        `supplier` eq_ref:PRIMARY 1/450091 3000000/1530000
          `nation` `n2` eq_ref:PRIMARY 1/450091 3000000/1980000 eq_ref-extended
            `orders` eq_ref:PRIMARY 1/450091 1500000/2430000 eq_ref-extended PRUNED(cost)
            `customer` ref:i_c_nationkey 6000/1810000000 18000000000/1810000000 PRUNED(cost)
            `orders` eq_ref:PRIMARY 1/450091 1500000/2430000 PRUNED(cost)
        `customer` ref:i_c_nationkey 6000/1810000000 18000000000/1810000000 PRUNED(cost)
        `orders` eq_ref:PRIMARY 1/450091 1500000/1530000 PRUNED(eq_ref_heuristic)
    `orders` scan 1500000/452975 3750000/452976
      `nation` `n2` scan 25/9380000 93800000/9830000 PRUNED(cost)
      `supplier` scan 10000/3750000000 38000000000/3750000000 PRUNED(cost)
      `customer` eq_ref:PRIMARY 1/562500 187500/1020000
        `nation` `n2` scan 25/468751 4690000/1480000
          `supplier` ref:i_s_nationkey 400/189000000 1880000000/191000000 PRUNED(cost)
          `part` scan 200000/9380000000 94000000000/9380000000 PRUNED(cost)
          `lineitem` ref:PRIMARY 4.0008/3060000 18800000/4550000 PRUNED(cost)
        `supplier` scan 10000/188000000 1880000000/189000000 PRUNED(cost)
        `part` scan 200000/375000000 3750000000/376000000 PRUNED(cost)
        `lineitem` ref:PRIMARY 4.0008/122498 750152/1140000
          `nation` `n2` scan 25/1880000 18800000/3010000 PRUNED(cost)
          `supplier` eq_ref:PRIMARY 1/112523 750152/1250000
            `nation` `n2` eq_ref:PRIMARY 1/112523 750152/1360000 eq_ref-extended
              `part` eq_ref:PRIMARY 1/112523 750152/1480000 eq_ref-extended REJECTED(cost)
      `part` scan 200000/7500000000 75000000000/7500000000 PRUNED(cost)
      `lineitem` ref:PRIMARY 4.0008/2450000 15000000/2900000 PRUNED(cost)
    `lineitem` scan 6001215/3010000 30000000/3010000 PRUNED(cost)
  `nation` `n2` scan 25/2.75 25/3.5
    `nation` `n1` ref:i_n_regionkey 5/18.777 125/22.277
      `supplier` ref:i_s_nationkey 400/5044.9 50000/5067.2
        `customer` ref:i_c_nationkey 6000/30100000 300000000/30100000 PRUNED(cost)
        `part` scan 200000/100000000 1000000000/100000000 PRUNED(cost)
        `orders` scan 1500000/3750000000 38000000000/3750000000 PRUNED(cost)
        `lineitem` ref:i_l_suppkey 600.12/10500000 30000000/10500000 PRUNED(cost)
      `customer` ref:i_c_nationkey 6000/75237 750000/75259
        `supplier` ref:i_s_nationkey 400/30300000 300000000/30300000 PRUNED(cost)
        `part` scan 200000/1500000000 15000000000/1500000000 PRUNED(cost)
        `orders` ref:i_o_custkey 15.001/3940000 5630000/4010000 PRUNED(cost)
        `lineitem` scan 6001215/450000000000 4500000000000/450000000000 PRUNED(cost)
      `part` scan 200000/268527 2500000/268549
        `supplier` ref:i_s_nationkey 400/101000000 1000000000/101000000 PRUNED(cost)
        `customer` ref:i_c_nationkey 6000/1500000000 15000000000/1510000000 PRUNED(cost)
        `orders` scan 1500000/190000000000 1900000000000/190000000000 PRUNED(cost)
        `lineitem` ref:i_l_partkey_suppkey 30.006/26300000 75000000/26500000 PRUNED(cost)
      `orders` scan 1500000/9450000 93800000/9450000 PRUNED(cost)
      `lineitem` scan 6001215/75000000 750000000/75000000 PRUNED(cost)
    `supplier` ref:i_s_nationkey 400/1009 10000/1012.5
      `nation` `n1` ref:i_n_regionkey 5/7511 50000/8523.5
        `customer` ref:i_c_nationkey 6000/30100000 300000000/30100000 PRUNED(cost)
        `part` scan 200000/100000000 1000000000/100000000 PRUNED(cost)
        `orders` scan 1500000/3750000000 38000000000/3750000000 PRUNED(cost)
        `lineitem` ref:i_l_suppkey 600.12/10500000 30000000/10500000 PRUNED(cost)
      `customer` scan 150000/150000000 1500000000/150000000 PRUNED(cost)
      `part` scan 200000/20000000 200000000/20000000 PRUNED(cost)
      `orders` scan 1500000/750000000 7500000000/750000000 PRUNED(cost)
      `lineitem` ref:i_l_suppkey 600.12/2100000 6000000/2100000
        `nation` `n1` ref:i_n_regionkey 5/4510000 30000000/6610000 PRUNED(cost)
        `customer` scan 150000/90000000000 900000000000/90000000000 PRUNED(cost)
        `part` eq_ref:PRIMARY 1/2100000 600122/4200000 PRUNED(cost)
        `orders` eq_ref:PRIMARY 1/2100000 3000000/4200000 PRUNED(cost)
    `customer` scan 150000/375441 3750000/375445
      `nation` `n1` eq_ref:PRIMARY 1/412500 750000/787945
        `supplier` ref:i_s_nationkey 400/30300000 300000000/31100000 PRUNED(cost)
        `part` scan 200000/1500000000 15000000000/1500000000 PRUNED(cost)
        `orders` ref:i_o_custkey 15.001/3940000 5630000/4730000 PRUNED(cost)
        `lineitem` scan 6001215/450000000000 4500000000000/450000000000 PRUNED(cost)
      `supplier` ref:i_s_nationkey 400/151000000 1500000000/152000000 PRUNED(cost)
      `part` scan 200000/7500000000 75000000000/7500000000 PRUNED(cost)
      `orders` ref:i_o_custkey 15.001/19700000 28100000/20100000 PRUNED(cost)
      `lineitem` scan 6001215/2300000000000 23000000000000/2300000000000 PRUNED(cost)
    `part` scan 200000/68496 500000/68499
      `nation` `n1` ref:i_n_regionkey 5/375549 2500000/444048
        `supplier` ref:i_s_nationkey 400/101000000 1000000000/101000000 PRUNED(cost)
        `customer` ref:i_c_nationkey 6000/1500000000 15000000000/1510000000 PRUNED(cost)
        `orders` scan 1500000/190000000000 1900000000000/190000000000 PRUNED(cost)
        `lineitem` ref:i_l_partkey_suppkey 30.006/26300000 75000000/26700000 PRUNED(cost)
      `supplier` ref:i_s_nationkey 400/20200000 200000000/20200000 PRUNED(cost)
      `customer` scan 150000/7500000000 75000000000/7500000000 PRUNED(cost)
      `orders` scan 1500000/38000000000 380000000000/38000000000 PRUNED(cost)
      `lineitem` ref:i_l_partkey_suppkey 30.006/5250000 15000000/5320000 PRUNED(cost)
    `orders` scan 1500000/1950000 18800000/1950000
      `nation` `n1` ref:i_n_regionkey 5/14100000 93800000/16000000 PRUNED(cost)
      `supplier` ref:i_s_nationkey 400/757000000 7500000000/759000000 PRUNED(cost)
      `customer` eq_ref:PRIMARY 1/2060000 18800000/4020000 PRUNED(cost)
      `part` scan 200000/38000000000 380000000000/38000000000 PRUNED(cost)
      `lineitem` ref:PRIMARY 4.0008/12200000 75000000/14200000 PRUNED(cost)
    `lineitem` scan 6001215/15000000 150000000/15000000 PRUNED(cost)
  `supplier` scan 10000/1040.3 10000/1041
    `nation` `n1` ref:i_n_regionkey 5/7511 50000/8552
      `nation` `n2` eq_ref:PRIMARY 1/7500 50000/16052
        `customer` ref:i_c_nationkey 6000/30100000 300000000/30100000 PRUNED(cost)
        `part` scan 200000/100000000 1000000000/100000000 PRUNED(cost)
        `orders` scan 1500000/3750000000 38000000000/3750000000 PRUNED(cost)
        `lineitem` ref:i_l_suppkey 600.12/10500000 30000000/10500000 PRUNED(cost)
      `customer` ref:i_c_nationkey 6000/30100000 300000000/30100000 PRUNED(cost)
      `part` scan 200000/100000000 1000000000/100000000 PRUNED(cost)
      `orders` scan 1500000/3750000000 38000000000/3750000000 PRUNED(cost)
      `lineitem` ref:i_l_suppkey 600.12/10500000 30000000/10500000 PRUNED(cost)
    `nation` `n2` eq_ref:PRIMARY 1/3500 10000/4541
      `nation` `n1` ref:i_n_regionkey 5/7511 50000/12052
        `customer` ref:i_c_nationkey 6000/30100000 300000000/30100000 PRUNED(cost)
        `part` scan 200000/100000000 1000000000/100000000 PRUNED(cost)
        `orders` scan 1500000/3750000000 38000000000/3750000000 PRUNED(cost)
        `lineitem` ref:i_l_suppkey 600.12/10500000 30000000/10500000 PRUNED(cost)
      `customer` scan 150000/150000000 1500000000/150000000 PRUNED(cost)
      `part` scan 200000/20000000 200000000/20000000 PRUNED(cost)
      `orders` scan 1500000/750000000 7500000000/750000000 PRUNED(cost)
      `lineitem` ref:i_l_suppkey 600.12/2100000 6000000/2110000
        `nation` `n1` ref:i_n_regionkey 5/4510000 30000000/6610000 PRUNED(cost)
        `customer` scan 150000/90000000000 900000000000/90000000000 PRUNED(cost)
        `part` eq_ref:PRIMARY 1/2100000 600122/4210000 PRUNED(cost)
        `orders` eq_ref:PRIMARY 1/2100000 3000000/4210000 PRUNED(cost)
    `customer` scan 150000/150000000 1500000000/150000000 PRUNED(cost)
    `part` scan 200000/20000000 200000000/20000000 PRUNED(cost)
    `orders` scan 1500000/750000000 7500000000/750000000 PRUNED(cost)
    `lineitem` ref:i_l_suppkey 600.12/2100000 6000000/2100000 PRUNED(heuristic)
  `customer` scan 150000/15441 150000/15442
    `nation` `n1` eq_ref:PRIMARY 1/52500 30000/67942
      `nation` `n2` scan 25/75000 750000/142942
        `supplier` ref:i_s_nationkey 400/30300000 300000000/30400000 PRUNED(cost)
        `part` scan 200000/1500000000 15000000000/1500000000 PRUNED(cost)
        `orders` ref:i_o_custkey 15.001/3940000 5630000/4080000 PRUNED(cost)
        `lineitem` scan 6001215/450000000000 4500000000000/450000000000 PRUNED(cost)
      `supplier` scan 10000/30000000 300000000/30100000 PRUNED(cost)
      `part` scan 200000/60000000 600000000/60100000 PRUNED(cost)
      `orders` ref:i_o_custkey 15.001/157506 225009/225448
        `nation` `n2` scan 25/562524 5630000/787972
          `supplier` ref:i_s_nationkey 400/227000000 2250000000/228000000 PRUNED(cost)
          `part` scan 200000/11000000000 110000000000/11000000000 PRUNED(cost)
          `lineitem` ref:PRIMARY 4.0008/3680000 22500000/4460000 PRUNED(cost)
        `supplier` scan 10000/225000000 2250000000/225000000 PRUNED(cost)
        `part` scan 200000/450000000 4500000000/450000000 PRUNED(cost)
        `lineitem` ref:PRIMARY 4.0008/147003 900218/372451
          `nation` `n2` scan 25/2250000 22500000/2620000 PRUNED(cost)
          `supplier` eq_ref:PRIMARY 1/315076 900218/687528
            `nation` `n2` eq_ref:PRIMARY 1/315076 900218/1000000 eq_ref-extended
              `part` eq_ref:PRIMARY 1/315076 900218/1320000 eq_ref-extended REJECTED(cost)
      `lineitem` scan 6001215/18000000000 180000000000/18000000000 PRUNED(cost)
    `nation` `n2` scan 25/375001 3750000/390442 PRUNED(heuristic)
    `supplier` scan 10000/150000000 1500000000/150000000 PRUNED(cost)
    `part` scan 200000/300000000 3000000000/300000000 PRUNED(cost)
    `orders` ref:i_o_custkey 15.001/787532 1130000/802973 PRUNED(heuristic)
    `lineitem` scan 6001215/90000000000 900000000000/90000000000 PRUNED(cost)
  `part` scan 200000/20489 20000/20490
    `nation` `n1` ref:i_n_regionkey 5/15022 100000/35512
      `nation` `n2` scan 25/250001 2500000/285513
        `supplier` ref:i_s_nationkey 400/101000000 1000000000/101000000 PRUNED(cost)
        `customer` ref:i_c_nationkey 6000/1500000000 15000000000/1510000000 PRUNED(cost)
        `orders` scan 1500000/190000000000 1900000000000/190000000000 PRUNED(cost)
        `lineitem` ref:i_l_partkey_suppkey 30.006/26300000 75000000/26500000 PRUNED(cost)
      `supplier` scan 10000/100000000 1000000000/100000000 PRUNED(cost)
      `customer` ref:i_c_nationkey 6000/60200000 600000000/60200000 PRUNED(cost)
      `orders` scan 1500000/7500000000 75000000000/7500000000 PRUNED(cost)
      `lineitem` ref:i_l_partkey_suppkey 30.006/1050000 3000000/1090000
        `nation` `n2` scan 25/7500000 75000000/8590000 PRUNED(cost)
        `supplier` eq_ref:PRIMARY 1/450091 3000000/1540000
          `nation` `n2` eq_ref:PRIMARY 1/450091 3000000/1990000 eq_ref-extended
            `orders` eq_ref:PRIMARY 1/450091 1500000/2440000 eq_ref-extended PRUNED(cost)
            `customer` ref:i_c_nationkey 6000/1810000000 18000000000/1810000000 PRUNED(cost)
            `orders` eq_ref:PRIMARY 1/450091 1500000/2440000 PRUNED(cost)
        `customer` ref:i_c_nationkey 6000/1810000000 18000000000/1810000000 PRUNED(cost)
        `orders` eq_ref:PRIMARY 1/450091 1500000/1540000 PRUNED(eq_ref_heuristic)
    `nation` `n2` scan 25/50000 500000/70490
      `nation` `n1` ref:i_n_regionkey 5/375549 2500000/446039
        `supplier` ref:i_s_nationkey 400/101000000 1000000000/101000000 PRUNED(cost)
        `customer` ref:i_c_nationkey 6000/1500000000 15000000000/1510000000 PRUNED(cost)
        `orders` scan 1500000/190000000000 1900000000000/190000000000 PRUNED(cost)
        `lineitem` ref:i_l_partkey_suppkey 30.006/26300000 75000000/26700000 PRUNED(cost)
      `supplier` ref:i_s_nationkey 400/20200000 200000000/20300000 PRUNED(cost)
      `customer` scan 150000/7500000000 75000000000/7500000000 PRUNED(cost)
      `orders` scan 1500000/38000000000 380000000000/38000000000 PRUNED(cost)
      `lineitem` ref:i_l_partkey_suppkey 30.006/5250000 15000000/5320000 PRUNED(cost)
    `supplier` scan 10000/20000000 200000000/20000000 PRUNED(cost)
    `customer` scan 150000/300000000 3000000000/300000000 PRUNED(cost)
    `orders` scan 1500000/1500000000 15000000000/1500000000 PRUNED(cost)
    `lineitem` ref:i_l_partkey_suppkey 30.006/210095 600122/230585
      `nation` `n1` ref:i_n_regionkey 5/450750 3000000/681335
        `nation` `n2` scan 25/7500000 75000000/8180000 PRUNED(cost)
        `supplier` eq_ref:PRIMARY 1/450091 3000000/1130000
          `nation` `n2` eq_ref:PRIMARY 1/450091 3000000/1580000 eq_ref-extended
            `orders` eq_ref:PRIMARY 1/450091 1500000/2030000 eq_ref-extended
              `customer` eq_ref:PRIMARY 1/225046 1500000/2260000 PRUNED(cost)
        `customer` ref:i_c_nationkey 6000/1810000000 18000000000/1810000000 PRUNED(cost)
      `nation` `n2` scan 25/1500000 15000000/1730000
        `nation` `n1` ref:i_n_regionkey 5/11300000 75000000/13000000 PRUNED(cost)
        `supplier` eq_ref:PRIMARY 1/1650000 750152/3380000 PRUNED(cost)
        `customer` scan 150000/230000000000 2300000000000/230000000000 PRUNED(cost)
        `orders` eq_ref:PRIMARY 1/1650000 7500000/3380000 PRUNED(cost)
      `supplier` eq_ref:PRIMARY 1/210043 600122/440627
        `nation` `n2` eq_ref:PRIMARY 1/210043 600122/650670 eq_ref-extended
          `orders` eq_ref:PRIMARY 1/210043 300061/860712 eq_ref-extended
            `nation` `n1` ref:i_n_regionkey 5/225375 1500000/1090000
              `customer` eq_ref:PRIMARY 1/225046 1500000/1310000 REJECTED(cost)
            `customer` eq_ref:PRIMARY 1/105021 300061/965734
              `nation` `n1` eq_ref:PRIMARY 1/105021 300061/1070000 eq_ref-extended Sort cost: 300061 Total cost: 1370000 *** NEW BEST PLAN ***
      `customer` scan 150000/9000000000 90000000000/9000000000 PRUNED(cost)
  `orders` scan 1500000/152972 750000/152973
    `nation` `n1` ref:i_n_regionkey 5/563323 3750000/716296
      `nation` `n2` scan 25/9380000 93800000/10100000 PRUNED(cost)
      `supplier` scan 10000/3750000000 38000000000/3750000000 PRUNED(cost)
      `customer` eq_ref:PRIMARY 1/562500 187500/1280000
        `nation` `n2` scan 25/468751 4690000/1750000 PRUNED(cost)
        `supplier` scan 10000/188000000 1880000000/189000000 PRUNED(cost)
        `part` scan 200000/375000000 3750000000/376000000 PRUNED(cost)
        `lineitem` ref:PRIMARY 4.0008/122498 750152/1400000 PRUNED(cost)
      `part` scan 200000/7500000000 75000000000/7500000000 PRUNED(cost)
      `lineitem` ref:PRIMARY 4.0008/2450000 15000000/3170000 PRUNED(cost)
    `nation` `n2` scan 25/1880000 18800000/2030000 PRUNED(cost)
    `supplier` scan 10000/750000000 7500000000/750000000 PRUNED(cost)
    `customer` eq_ref:PRIMARY 1/262500 750000/415473
      `nation` `n1` eq_ref:PRIMARY 1/262500 150000/677973 eq_ref-extended
        `nation` `n2` scan 25/375001 3750000/1050000
          `supplier` ref:i_s_nationkey 400/151000000 1500000000/152000000 PRUNED(cost)
          `part` scan 200000/7500000000 75000000000/7500000000 PRUNED(cost)
          `lineitem` ref:PRIMARY 4.0008/2450000 15000000/3500000 PRUNED(cost)
        `supplier` scan 10000/150000000 1500000000/151000000 PRUNED(cost)
        `part` scan 200000/300000000 3000000000/301000000 PRUNED(cost)
        `lineitem` ref:PRIMARY 4.0008/97998 600122/775971
          `nation` `n2` scan 25/1500000 15000000/2280000 PRUNED(cost)
          `supplier` eq_ref:PRIMARY 1/210043 600122/986013
            `nation` `n2` eq_ref:PRIMARY 1/210043 600122/1200000 eq_ref-extended
              `part` eq_ref:PRIMARY 1/210043 600122/1410000 eq_ref-extended PRUNED(cost)
              `part` eq_ref:PRIMARY 1/210043 600122/1410000 PRUNED(cost)
          `part` eq_ref:PRIMARY 1/210043 60012/986013 PRUNED(eq_ref_heuristic)
    `part` scan 200000/1500000000 15000000000/1500000000 PRUNED(cost)
    `lineitem` ref:PRIMARY 4.0008/489991 3000000/642963 PRUNED(heuristic)
  `lineitem` scan 6001215/613022 6000000/613023
    `nation` `n1` ref:i_n_regionkey 5/4510000 30000000/5120000 PRUNED(cost)
    `nation` `n2` scan 25/15000000 150000000/15600000 PRUNED(cost)
    `supplier` eq_ref:PRIMARY 1/2100000 6000000/2710000 PRUNED(cost)
    `customer` scan 150000/90000000000 900000000000/90000000000 PRUNED(cost)
    `part` eq_ref:PRIMARY 1/2100000 600122/2710000 PRUNED(cost)
    `orders` eq_ref:PRIMARY 1/2100000 3000000/2710000 PRUNED(cost)
`nation` `n1` scan 25/2.75 25/2.75 PRUNED(heuristic)
`nation` `n2` scan 25/2.75 25/2.75 PRUNED(heuristic)
`supplier` scan 10000/1040.2 10000/1040.2 PRUNED(heuristic)
`customer` scan 150000/15441 150000/15441 PRUNED(heuristic)
`part` scan 200000/20489 20000/20489 PRUNED(heuristic)
`orders` scan 1500000/152971 750000/152971 PRUNED(heuristic)
`lineitem` scan 6001215/613022 6000000/613022 PRUNED(heuristic)



select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`nation` `n1` scan 25/2.75 4.75/2.75
  `nation` `n2` scan 25/4.5313 22.562/7.2813
    `supplier` ref:i_s_nationkey 400/910.61 9025/917.89
      `customer` ref:i_c_nationkey 6000/5430000 54100000/5430000
        `orders` ref:i_o_custkey 15.001/95000000 812000000/100000000
          `lineitem` ref:i_l_suppkey 1.0002/284000000 812000000/385000000 *** NEW BEST PLAN ***
        `lineitem` ref:i_l_suppkey 600.12/11000000000 16000000000/11000000000 PRUNED(cost)
      `orders` scan 1500000/1350000000 14000000000/1350000000 PRUNED(cost)
      `lineitem` ref:i_l_suppkey 600.12/1900000 2710000/1900000
        `customer` ref:i_c_nationkey 6000/1630000000 16000000000/1630000000 PRUNED(cost)
        `orders` eq_ref:PRIMARY 1/413334 2710000/2310000
          `customer` eq_ref:PRIMARY 1/413334 2710000/2720000 eq_ref-extended *** NEW BEST PLAN ***
    `customer` ref:i_c_nationkey 6000/13580 135375/13588
      `supplier` ref:i_s_nationkey 400/5460000 54100000/5480000 PRUNED(cost)
      `orders` ref:i_o_custkey 15.001/237434 2030000/251022
        `supplier` ref:i_s_nationkey 400/82000000 812000000/82200000 PRUNED(cost)
        `lineitem` ref:PRIMARY 4.0008/1330000 4060000/1580000
          `supplier` eq_ref:PRIMARY 1/620025 4060000/2200000 *** NEW BEST PLAN ***
      `lineitem` scan 6001215/41000000000 410000000000/41000000000 PRUNED(cost)
    `orders` scan 1500000/3390000 33800000/3390000 PRUNED(cost)
    `lineitem` scan 6001215/7080000 67700000/7080000 PRUNED(cost)
  `supplier` ref:i_s_nationkey 400/191.71 1900/194.46
    `nation` `n2` scan 25/904.82 9025/1099.3
      `customer` ref:i_c_nationkey 6000/5430000 54100000/5430000 PRUNED(cost)
      `orders` scan 1500000/1350000000 14000000000/1350000000 PRUNED(cost)
      `lineitem` ref:i_l_suppkey 600.12/1900000 2710000/1900000
        `customer` ref:i_c_nationkey 6000/1630000000 16000000000/1630000000 PRUNED(cost)
        `orders` eq_ref:PRIMARY 1/413334 2710000/2310000 PRUNED(cost)
    `customer` scan 150000/28500000 285000000/28500000 PRUNED(cost)
    `orders` scan 1500000/285000000 2850000000/285000000 PRUNED(cost)
    `lineitem` ref:i_l_suppkey 600.12/399181 570115/399375
      `nation` `n2` scan 25/270826 2710000/670201
        `customer` ref:i_c_nationkey 6000/1630000000 16000000000/1630000000 PRUNED(cost)
        `orders` eq_ref:PRIMARY 1/413334 2710000/1080000
          `customer` eq_ref:PRIMARY 1/413334 2710000/1500000 eq_ref-extended *** NEW BEST PLAN ***
      `customer` scan 150000/8550000000 86000000000/8550000000 PRUNED(cost)
      `orders` eq_ref:PRIMARY 1/199540 570115/598915
        `customer` eq_ref:PRIMARY 1/199540 570115/798456 eq_ref-extended
          `nation` `n2` eq_ref:PRIMARY 1/199540 570115/997996 eq_ref-extended *** NEW BEST PLAN ***
  `customer` scan 150000/71691 712500/71694
    `nation` `n2` eq_ref:PRIMARY 1/108750 135375/180444
      `supplier` ref:i_s_nationkey 400/5460000 54100000/5640000 PRUNED(cost)
      `orders` ref:i_o_custkey 15.001/237434 2030000/417878
        `supplier` ref:i_s_nationkey 400/82000000 812000000/82400000 PRUNED(cost)
        `lineitem` ref:PRIMARY 4.0008/1330000 4060000/1740000 PRUNED(cost)
      `lineitem` scan 6001215/41000000000 410000000000/41000000000 PRUNED(cost)
    `supplier` ref:i_s_nationkey 400/28800000 285000000/28800000 PRUNED(cost)
    `orders` ref:i_o_custkey 15.001/1250000 10700000/1320000 PRUNED(cost)
    `lineitem` scan 6001215/210000000000 2100000000000/210000000000 PRUNED(cost)
  `orders` scan 1500000/715471 7120000/715474
    `nation` `n2` scan 25/3380000 33800000/4100000 PRUNED(cost)
    `supplier` ref:i_s_nationkey 400/288000000 2850000000/288000000 PRUNED(cost)
    `customer` eq_ref:PRIMARY 1/1090000 7120000/1800000 PRUNED(cost)
    `lineitem` ref:PRIMARY 4.0008/4650000 14300000/5370000 PRUNED(cost)
  `lineitem` scan 6001215/1740000 14300000/1740000 PRUNED(cost)
`nation` `n2` scan 25/2.75 4.75/2.75
  `nation` `n1` scan 25/4.5313 22.562/7.2813
    `supplier` ref:i_s_nationkey 400/910.61 9025/917.89
      `customer` ref:i_c_nationkey 6000/5430000 54100000/5430000 PRUNED(cost)
      `orders` scan 1500000/1350000000 14000000000/1350000000 PRUNED(cost)
      `lineitem` ref:i_l_suppkey 600.12/1900000 2710000/1900000 PRUNED(cost)
    `customer` ref:i_c_nationkey 6000/13580 135375/13588
      `supplier` ref:i_s_nationkey 400/5460000 54100000/5480000 PRUNED(cost)
      `orders` ref:i_o_custkey 15.001/237434 2030000/251022
        `supplier` ref:i_s_nationkey 400/82000000 812000000/82200000 PRUNED(cost)
        `lineitem` ref:PRIMARY 4.0008/1330000 4060000/1580000 PRUNED(cost)
      `lineitem` scan 6001215/41000000000 410000000000/41000000000 PRUNED(cost)
    `orders` scan 1500000/3390000 33800000/3390000 PRUNED(cost)
    `lineitem` scan 6001215/7080000 67700000/7080000 PRUNED(cost)
  `supplier` scan 10000/4790.3 47500/4793
    `nation` `n1` eq_ref:PRIMARY 1/7250 9025/12043
      `customer` ref:i_c_nationkey 6000/5430000 54100000/5440000 PRUNED(cost)
      `orders` scan 1500000/1350000000 14000000000/1350000000 PRUNED(cost)
      `lineitem` ref:i_l_suppkey 600.12/1900000 2710000/1910000 PRUNED(cost)
    `customer` ref:i_c_nationkey 6000/28600000 285000000/28600000 PRUNED(cost)
    `orders` scan 1500000/7130000000 71000000000/7130000000 PRUNED(cost)
    `lineitem` ref:i_l_suppkey 600.12/9980000 14300000/9980000 PRUNED(cost)
  `customer` ref:i_c_nationkey 6000/2859 28500/2861.8
    `nation` `n1` scan 25/13540 135375/16402
      `supplier` ref:i_s_nationkey 400/5460000 54100000/5480000 PRUNED(cost)
      `orders` ref:i_o_custkey 15.001/237434 2030000/253837
        `supplier` ref:i_s_nationkey 400/82000000 812000000/82200000 PRUNED(cost)
        `lineitem` ref:PRIMARY 4.0008/1330000 4060000/1580000 PRUNED(cost)
      `lineitem` scan 6001215/41000000000 410000000000/41000000000 PRUNED(cost)
    `supplier` scan 10000/28500000 285000000/28500000 PRUNED(cost)
    `orders` ref:i_o_custkey 15.001/49986 427517/52848
      `nation` `n1` scan 25/203084 2030000/255932
        `supplier` ref:i_s_nationkey 400/82000000 812000000/82200000 PRUNED(cost)
        `lineitem` ref:PRIMARY 4.0008/1330000 4060000/1580000 PRUNED(cost)
      `supplier` scan 10000/428000000 4280000000/428000000 PRUNED(cost)
      `lineitem` ref:PRIMARY 4.0008/279306 855207/332154
        `nation` `n1` scan 25/406259 4060000/738412
          `supplier` eq_ref:PRIMARY 1/620025 4060000/1360000 PRUNED(cost)
        `supplier` eq_ref:PRIMARY 1/299323 855207/631476
          `nation` `n1` eq_ref:PRIMARY 1/299323 855207/930799 eq_ref-extended *** NEW BEST PLAN ***
    `lineitem` scan 6001215/8550000000 86000000000/8550000000 PRUNED(cost)
  `orders` scan 1500000/715471 7120000/715474
    `nation` `n1` scan 25/3380000 33800000/4100000 PRUNED(cost)
    `supplier` scan 10000/7130000000 71000000000/7130000000 PRUNED(cost)
    `customer` eq_ref:PRIMARY 1/1090000 356250/1800000 PRUNED(cost)
    `lineitem` ref:PRIMARY 4.0008/4650000 14300000/5370000 PRUNED(cost)
  `lineitem` scan 6001215/1740000 14300000/1740000 PRUNED(cost)
`supplier` scan 10000/1040.2 10000/1040.2
  `nation` `n1` eq_ref:PRIMARY 1/3500 1900/4540.2
    `nation` `n2` scan 25/904.82 9025/5445.1
      `customer` ref:i_c_nationkey 6000/5430000 54100000/5440000 PRUNED(cost)
      `orders` scan 1500000/1350000000 14000000000/1350000000 PRUNED(cost)
      `lineitem` ref:i_l_suppkey 600.12/1900000 2710000/1900000 PRUNED(cost)
    `customer` scan 150000/28500000 285000000/28500000 PRUNED(cost)
    `orders` scan 1500000/285000000 2850000000/285000000 PRUNED(cost)
    `lineitem` ref:i_l_suppkey 600.12/399181 570115/403721
      `nation` `n2` scan 25/270826 2710000/674547
        `customer` ref:i_c_nationkey 6000/1630000000 16000000000/1630000000 PRUNED(cost)
        `orders` eq_ref:PRIMARY 1/413334 2710000/1090000 PRUNED(cost)
      `customer` scan 150000/8550000000 86000000000/8550000000 PRUNED(cost)
      `orders` eq_ref:PRIMARY 1/199540 570115/603261
        `customer` eq_ref:PRIMARY 1/199540 570115/802802 eq_ref-extended
          `nation` `n2` eq_ref:PRIMARY 1/199540 570115/1000000 eq_ref-extended PRUNED(cost)
          `nation` `n2` eq_ref:PRIMARY 1/199540 570115/1000000 PRUNED(cost)
  `nation` `n2` scan 25/4752.3 47500/5792.6 PRUNED(heuristic)
  `customer` scan 150000/150000000 1500000000/150000000 PRUNED(cost)
  `orders` scan 1500000/1500000000 15000000000/1500000000 PRUNED(cost)
  `lineitem` ref:i_l_suppkey 600.12/2100000 3000000/2100000 PRUNED(cost)
`customer` scan 150000/15441 150000/15441
  `nation` `n1` scan 25/71253 712500/86694
    `nation` `n2` eq_ref:PRIMARY 1/108750 135375/195444
      `supplier` ref:i_s_nationkey 400/5460000 54100000/5660000 PRUNED(cost)
      `orders` ref:i_o_custkey 15.001/237434 2030000/432878
        `supplier` ref:i_s_nationkey 400/82000000 812000000/82400000 PRUNED(cost)
        `lineitem` ref:PRIMARY 4.0008/1330000 4060000/1760000 PRUNED(cost)
      `lineitem` scan 6001215/41000000000 410000000000/41000000000 PRUNED(cost)
    `supplier` ref:i_s_nationkey 400/28800000 285000000/28800000 PRUNED(cost)
    `orders` ref:i_o_custkey 15.001/1250000 10700000/1340000 PRUNED(cost)
    `lineitem` scan 6001215/210000000000 2100000000000/210000000000 PRUNED(cost)
  `nation` `n2` eq_ref:PRIMARY 1/52500 28500/67941
    `nation` `n1` scan 25/13540 135375/81481
      `supplier` ref:i_s_nationkey 400/5460000 54100000/5550000 PRUNED(cost)
      `orders` ref:i_o_custkey 15.001/237434 2030000/318916
        `supplier` ref:i_s_nationkey 400/82000000 812000000/82300000 PRUNED(cost)
        `lineitem` ref:PRIMARY 4.0008/1330000 4060000/1650000 PRUNED(cost)
      `lineitem` scan 6001215/41000000000 410000000000/41000000000 PRUNED(cost)
    `supplier` scan 10000/28500000 285000000/28600000 PRUNED(cost)
    `orders` ref:i_o_custkey 15.001/49986 427517/117927
      `nation` `n1` scan 25/203084 2030000/321011
        `supplier` ref:i_s_nationkey 400/82000000 812000000/82300000 PRUNED(cost)
        `lineitem` ref:PRIMARY 4.0008/1330000 4060000/1650000 PRUNED(cost)
      `supplier` scan 10000/428000000 4280000000/428000000 PRUNED(cost)
      `lineitem` ref:PRIMARY 4.0008/279306 855207/397233
        `nation` `n1` scan 25/406259 4060000/803492
          `supplier` eq_ref:PRIMARY 1/620025 4060000/1420000 PRUNED(cost)
        `supplier` eq_ref:PRIMARY 1/299323 855207/696555
          `nation` `n1` eq_ref:PRIMARY 1/299323 855207/995878 eq_ref-extended PRUNED(cost)
          `nation` `n1` eq_ref:PRIMARY 1/299323 855207/995878 PRUNED(cost)
    `lineitem` scan 6001215/8550000000 86000000000/8550000000 PRUNED(cost)
  `supplier` scan 10000/150000000 1500000000/150000000 PRUNED(cost)
  `orders` ref:i_o_custkey 15.001/263085 2250000/278526 PRUNED(heuristic)
  `lineitem` scan 6001215/45000000000 450000000000/45000000000 PRUNED(cost)
`orders` scan 1500000/152971 1500000/152971
  `nation` `n1` scan 25/712510 7120000/865481
    `nation` `n2` scan 25/3380000 33800000/4250000 PRUNED(cost)
    `supplier` ref:i_s_nationkey 400/288000000 2850000000/288000000 PRUNED(cost)
    `customer` eq_ref:PRIMARY 1/1090000 7120000/1950000 PRUNED(cost)
    `lineitem` ref:PRIMARY 4.0008/4650000 14300000/5520000 PRUNED(cost)
  `nation` `n2` scan 25/712510 7120000/865481
    `nation` `n1` scan 25/3380000 33800000/4250000 PRUNED(cost)
    `supplier` scan 10000/7130000000 71000000000/7130000000 PRUNED(cost)
    `customer` eq_ref:PRIMARY 1/1090000 356250/1950000 PRUNED(cost)
    `lineitem` ref:PRIMARY 4.0008/4650000 14300000/5520000 PRUNED(cost)
  `supplier` scan 10000/1500000000 15000000000/1500000000 PRUNED(cost)
  `customer` eq_ref:PRIMARY 1/525000 1500000/677971
    `nation` `n2` eq_ref:PRIMARY 1/525000 285000/1200000 eq_ref-extended PRUNED(cost)
    `nation` `n1` scan 25/712517 7120000/1390000 PRUNED(cost)
    `nation` `n2` eq_ref:PRIMARY 1/525000 285000/1200000 PRUNED(cost)
    `supplier` scan 10000/1500000000 15000000000/1500000000 PRUNED(cost)
    `lineitem` ref:PRIMARY 4.0008/979981 3000000/1660000 PRUNED(cost)
  `lineitem` ref:PRIMARY 4.0008/979981 3000000/1130000 PRUNED(cost)
`lineitem` scan 6001215/613022 3000000/613022
  `nation` `n1` scan 25/1430000 14300000/2040000 PRUNED(cost)
  `nation` `n2` scan 25/1430000 14300000/2040000 PRUNED(cost)
  `supplier` eq_ref:PRIMARY 1/1050000 3000000/1660000 PRUNED(cost)
  `customer` scan 150000/45000000000 450000000000/45000000000 PRUNED(cost)
  `orders` eq_ref:PRIMARY 1/1050000 3000000/1660000 PRUNED(cost)



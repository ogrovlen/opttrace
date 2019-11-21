select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`nation` scan 25/2.75 25/2.75
  `supplier` ref:i_s_nationkey 400/1009 10000/1011.7
    `part` scan 200000/22200000 222000000/22200000
      `partsupp` eq_ref:PRIMARY 1/107000000 222000000/129000000
        `orders` scan 1500000/33000000000000 330000000000000/33000000000000
          `lineitem` ref:i_l_partkey_suppkey 1/120000000000000 330000000000000/150000000000000 *** NEW BEST PLAN ***
        `lineitem` ref:i_l_partkey_suppkey 7.5058/584000000 1670000000/713000000
          `orders` eq_ref:PRIMARY 1/584000000 1670000000/1300000000 *** NEW BEST PLAN ***
      `orders` scan 1500000/33000000000000 330000000000000/33000000000000 PRUNED(cost)
      `lineitem` ref:i_l_partkey_suppkey 7.5058/584000000 1670000000/606000000 PRUNED(heuristic)
    `partsupp` ref:i_ps_suppkey 80/385841 800000/386852
      `part` eq_ref:PRIMARY 1/280000 88880/666852
        `orders` scan 1500000/13000000000 130000000000/13000000000 PRUNED(cost)
        `lineitem` ref:i_l_partkey_suppkey 7.5058/233550 667118/900402
          `orders` eq_ref:PRIMARY 1/233491 667118/1130000 *** NEW BEST PLAN ***
      `orders` scan 1500000/120000000000 1200000000000/120000000000 PRUNED(cost)
      `lineitem` ref:i_l_partkey_suppkey 7.5058/2100000 6000000/2490000 PRUNED(cost)
    `orders` scan 1500000/1500000000 15000000000/1500000000 PRUNED(cost)
    `lineitem` ref:i_l_suppkey 600.12/2100000 6000000/2100000 PRUNED(cost)
  `part` scan 200000/73820 555500/73823
    `supplier` ref:i_s_nationkey 400/22400000 222000000/22500000 PRUNED(cost)
    `partsupp` ref:PRIMARY 4/435697 2220000/509520
      `supplier` eq_ref:PRIMARY 1/244420 111100/753940
        `orders` scan 1500000/17000000000 170000000000/17000000000 PRUNED(cost)
        `lineitem` ref:i_l_partkey_suppkey 7.5058/291937 833897/1050000
          `orders` eq_ref:PRIMARY 1/91729 833897/1140000 PRUNED(cost)
      `orders` scan 1500000/330000000000 3300000000000/330000000000 PRUNED(cost)
      `lineitem` ref:i_l_partkey_suppkey 7.5058/5840000 16700000/6350000 PRUNED(cost)
    `orders` scan 1500000/83000000000 830000000000/83000000000 PRUNED(cost)
    `lineitem` ref:i_l_partkey_suppkey 30.006/5840000 16700000/5910000 PRUNED(cost)
  `partsupp` scan 800000/2000000 20000000/2000000 PRUNED(cost)
  `orders` scan 1500000/3750000 37500000/3750000 PRUNED(cost)
  `lineitem` scan 6001215/15000000 150000000/15000000 PRUNED(cost)
`supplier` scan 10000/1040.2 10000/1040.2
  `nation` eq_ref:PRIMARY 1/3500 10000/4540.2
    `part` scan 200000/22200000 222000000/22200000 PRUNED(cost)
    `partsupp` ref:i_ps_suppkey 80/385841 800000/390381
      `part` eq_ref:PRIMARY 1/280000 88880/670381
        `orders` scan 1500000/13000000000 130000000000/13000000000 PRUNED(cost)
        `lineitem` ref:i_l_partkey_suppkey 7.5058/233550 667118/903930
          `orders` eq_ref:PRIMARY 1/233491 667118/1140000 PRUNED(cost)
      `orders` scan 1500000/120000000000 1200000000000/120000000000 PRUNED(cost)
      `lineitem` ref:i_l_partkey_suppkey 7.5058/2100000 6000000/2490000 PRUNED(cost)
    `orders` scan 1500000/1500000000 15000000000/1500000000 PRUNED(cost)
    `lineitem` ref:i_l_suppkey 600.12/2100000 6000000/2110000 PRUNED(cost)
  `part` scan 200000/22200000 222000000/22200000 PRUNED(cost)
  `partsupp` ref:i_ps_suppkey 80/385841 800000/386881 PRUNED(heuristic)
  `orders` scan 1500000/1500000000 15000000000/1500000000 PRUNED(cost)
  `lineitem` ref:i_l_suppkey 600.12/2100000 6000000/2100000 PRUNED(cost)
`part` scan 200000/20489 22220/20489
  `nation` scan 25/55550 555500/76039
    `supplier` ref:i_s_nationkey 400/22400000 222000000/22500000 PRUNED(cost)
    `partsupp` ref:PRIMARY 4/435697 2220000/511736
      `supplier` eq_ref:PRIMARY 1/244420 111100/756156
        `orders` scan 1500000/17000000000 170000000000/17000000000 PRUNED(cost)
        `lineitem` ref:i_l_partkey_suppkey 7.5058/291937 833897/1050000
          `orders` eq_ref:PRIMARY 1/91729 833897/1140000 PRUNED(cost)
      `orders` scan 1500000/330000000000 3300000000000/330000000000 PRUNED(cost)
      `lineitem` ref:i_l_partkey_suppkey 7.5058/5840000 16700000/6350000 PRUNED(cost)
    `orders` scan 1500000/83000000000 830000000000/83000000000 PRUNED(cost)
    `lineitem` ref:i_l_partkey_suppkey 30.006/5840000 16700000/5910000 PRUNED(cost)
  `supplier` scan 10000/22200000 222000000/22200000 PRUNED(cost)
  `partsupp` ref:PRIMARY 4/17428 88880/37917
    `nation` scan 25/222201 2220000/260118
      `supplier` eq_ref:PRIMARY 1/244420 111100/504538
        `orders` scan 1500000/17000000000 170000000000/17000000000 PRUNED(cost)
        `lineitem` ref:i_l_partkey_suppkey 7.5058/291937 833897/796474
          `orders` eq_ref:PRIMARY 1/91729 833897/888203 *** NEW BEST PLAN ***
      `orders` scan 1500000/330000000000 3300000000000/330000000000 PRUNED(cost)
      `lineitem` ref:i_l_partkey_suppkey 7.5058/5840000 16700000/6100000 PRUNED(cost)
    `supplier` eq_ref:PRIMARY 1/31108 88880/69025
      `nation` eq_ref:PRIMARY 1/31108 88880/100133 eq_ref-extended
        `orders` scan 1500000/13000000000 130000000000/13000000000 PRUNED(cost)
        `lineitem` ref:i_l_partkey_suppkey 7.5058/233550 667118/333682
          `orders` eq_ref:PRIMARY 1/233491 667118/567174 *** NEW BEST PLAN ***
    `orders` scan 1500000/13000000000 130000000000/13000000000 PRUNED(cost)
    `lineitem` ref:i_l_partkey_suppkey 7.5058/233550 667118/271466 PRUNED(heuristic)
  `orders` scan 1500000/3330000000 33000000000/3330000000 PRUNED(cost)
  `lineitem` ref:i_l_partkey_suppkey 30.006/233416 666735/253905
    `nation` scan 25/1670000 16700000/1920000 PRUNED(cost)
    `supplier` eq_ref:PRIMARY 1/233357 666735/487262
      `nation` eq_ref:PRIMARY 1/233357 666735/720619 eq_ref-extended PRUNED(cost)
      `orders` eq_ref:PRIMARY 1/233357 666735/720619 eq_ref-extended PRUNED(cost)
      `nation` eq_ref:PRIMARY 1/233357 666735/720619 PRUNED(cost)
      `partsupp` eq_ref:PRIMARY 1/321567 666735/808829 PRUNED(cost)
      `orders` eq_ref:PRIMARY 1/233357 666735/720619 PRUNED(cost)
    `partsupp` eq_ref:PRIMARY 1/321567 666735/575471 PRUNED(cost)
    `orders` eq_ref:PRIMARY 1/233357 666735/487262 PRUNED(heuristic)
`partsupp` scan 800000/84814 800000/84814
  `nation` scan 25/2000000 20000000/2080000 PRUNED(cost)
  `supplier` eq_ref:PRIMARY 1/280000 800000/364814
    `nation` eq_ref:PRIMARY 1/280000 800000/644814 eq_ref-extended PRUNED(cost)
    `part` eq_ref:PRIMARY 1/280000 88880/644814 eq_ref-extended PRUNED(cost)
    `nation` eq_ref:PRIMARY 1/280000 800000/644814 PRUNED(cost)
    `part` eq_ref:PRIMARY 1/280000 88880/644814 PRUNED(cost)
    `orders` scan 1500000/120000000000 1200000000000/120000000000 PRUNED(cost)
    `lineitem` ref:i_l_partkey_suppkey 7.5058/2100000 6000000/2470000 PRUNED(cost)
  `part` eq_ref:PRIMARY 1/280000 88880/364814 PRUNED(eq_ref_heuristic)
  `orders` scan 1500000/120000000000 1200000000000/120000000000 PRUNED(cost)
  `lineitem` ref:i_l_partkey_suppkey 7.5058/2100000 6000000/2190000 PRUNED(cost)
`orders` scan 1500000/152971 1500000/152971
  `nation` scan 25/3750000 37500000/3900000 PRUNED(cost)
  `supplier` scan 10000/1500000000 15000000000/1500000000 PRUNED(cost)
  `part` scan 200000/3330000000 33000000000/3330000000 PRUNED(cost)
  `partsupp` scan 800000/120000000000 1200000000000/120000000000 PRUNED(cost)
  `lineitem` ref:PRIMARY 4.0008/979981 6000000/1130000 PRUNED(cost)
`lineitem` scan 6001215/613022 6000000/613022 PRUNED(cost)



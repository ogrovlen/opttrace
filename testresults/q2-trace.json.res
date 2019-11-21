select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`region` scan 5/0.75 1/0.75
  `nation` ref:i_n_regionkey 5/1.125 5/1.875
    `supplier` ref:i_s_nationkey 400/700 2000/701.88
      `part` scan 200000/467189 4440000/467891
        `partsupp` eq_ref:PRIMARY 1/2140000 4440000/2610000 *** NEW BEST PLAN ***
      `partsupp` ref:i_ps_suppkey 80/77168 160000/77870
        `part` eq_ref:PRIMARY 1/56000 8000/133870 *** NEW BEST PLAN ***
    `part` scan 200000/21379 11110/21381
      `supplier` ref:i_s_nationkey 400/1560000 4440000/1580000 PRUNED(cost)
      `partsupp` ref:PRIMARY 4/8713.9 44440/30095
        `supplier` eq_ref:PRIMARY 1/6666 2222/36761 *** NEW BEST PLAN ***
    `partsupp` scan 800000/404815 4000000/404817 PRUNED(cost)
  `supplier` scan 10000/1040.3 10000/1041
    `nation` eq_ref:PRIMARY 1/3500 2000/4541
      `part` scan 200000/467189 4440000/471730 PRUNED(cost)
      `partsupp` ref:i_ps_suppkey 80/77168 160000/81709 PRUNED(cost)
    `part` scan 200000/2250000 22200000/2250000 PRUNED(cost)
    `partsupp` ref:i_ps_suppkey 80/385841 800000/386882 PRUNED(cost)
  `part` scan 200000/20489 2222/20490
    `nation` ref:i_n_regionkey 5/2499.8 11110/22990
      `supplier` ref:i_s_nationkey 400/1560000 4440000/1580000 PRUNED(cost)
      `partsupp` ref:PRIMARY 4/8713.9 44440/31704
        `supplier` eq_ref:PRIMARY 1/6666 2222/38370 PRUNED(cost)
    `supplier` scan 10000/2220000 22200000/2240000 PRUNED(cost)
    `partsupp` ref:PRIMARY 4/1742.8 8888/22233
      `nation` ref:i_n_regionkey 5/9999 44440/32232
        `supplier` eq_ref:PRIMARY 1/6666 2222/38898 PRUNED(cost)
      `supplier` eq_ref:PRIMARY 1/3110.8 8888/25343
        `nation` eq_ref:PRIMARY 1/3110.8 1777.6/28454 eq_ref-extended *** NEW BEST PLAN ***
  `partsupp` scan 800000/84814 800000/84815 PRUNED(cost)
`nation` scan 25/2.75 25/2.75 PRUNED(heuristic)
`supplier` scan 10000/1040.2 10000/1040.2 PRUNED(heuristic)
`part` scan 200000/20489 2222/20489 PRUNED(heuristic)
`partsupp` scan 800000/84814 800000/84814 PRUNED(cost)

select#2:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`region` scan 5/0.75 1/0.75
  `nation` ref:i_n_regionkey 5/0.7511 5/1.5011
    `supplier` ref:i_s_nationkey 400/201.8 2000/203.3
      `partsupp` eq_ref:PRIMARY 1/964.6 2000/1167.9 *** NEW BEST PLAN ***
    `partsupp` ref:PRIMARY 4/3.9217 20/5.4228
      `supplier` eq_ref:PRIMARY 1/3 1/8.4228 *** NEW BEST PLAN ***
  `supplier` scan 10000/1040.3 10000/1041 PRUNED(cost)
  `partsupp` ref:PRIMARY 4/0.7843 4/1.5343
    `nation` ref:i_n_regionkey 5/3.0044 20/4.5387
      `supplier` eq_ref:PRIMARY 1/3 1/7.5387 *** NEW BEST PLAN ***
    `supplier` eq_ref:PRIMARY 1/1.4 4/2.9343
      `nation` eq_ref:PRIMARY 1/1.4 0.8/4.3343 eq_ref-extended *** NEW BEST PLAN ***
`nation` scan 25/2.75 25/2.75 PRUNED(heuristic)
`supplier` scan 10000/1040.2 10000/1040.2 PRUNED(cost)
`partsupp` ref:PRIMARY 4/0.7843 4/0.7843 PRUNED(heuristic)



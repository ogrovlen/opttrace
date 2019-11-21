select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`nation` scan 25/2.75 2.5/2.75
  `supplier` ref:i_s_nationkey 400/100.9 1000/103.65
    `partsupp` ref:i_ps_suppkey 80/38584 80000/38688 *** NEW BEST PLAN ***
  `partsupp` scan 800000/204814 2000000/204817 PRUNED(cost)
`supplier` scan 10000/1040.2 10000/1040.2
  `nation` scan 25/2502.6 10000/3542.8
    `partsupp` ref:i_ps_suppkey 80/385841 800000/389383 PRUNED(cost)
  `partsupp` ref:i_ps_suppkey 80/385841 800000/386881 PRUNED(cost)
`partsupp` scan 800000/84814 800000/84814 PRUNED(cost)

select#2:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`nation` scan 25/2.75 2.5/2.75
  `supplier` ref:i_s_nationkey 400/100.9 1000/103.65
    `partsupp` ref:i_ps_suppkey 80/38584 80000/38688 *** NEW BEST PLAN ***
  `partsupp` scan 800000/204814 2000000/204817 PRUNED(cost)
`supplier` scan 10000/1040.2 10000/1040.2
  `nation` scan 25/2502.6 10000/3542.8
    `partsupp` ref:i_ps_suppkey 80/385841 800000/389383 PRUNED(cost)
  `partsupp` ref:i_ps_suppkey 80/385841 800000/386881 PRUNED(cost)
`partsupp` scan 800000/84814 800000/84814 PRUNED(cost)



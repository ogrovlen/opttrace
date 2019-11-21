select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`nation` scan 25/2.75 2.5/2.75
  `supplier` ref:i_s_nationkey 400/350 1000/352.75
    `part` scan 200000/2240000 22200000/2240000
      `partsupp` eq_ref:PRIMARY 1/10700000 22200000/13000000 Semijoin(FM:1000/31200000 ML:1000/47259 DW:1000/15200000) Sort cost: 1000 Total cost: 48259 *** NEW BEST PLAN ***
    `partsupp` ref:i_ps_suppkey 80/38584 80000/38937
      `part` eq_ref:PRIMARY 1/28000 8888/66937 Semijoin(FM:1000/66937 ML:1000/47259 DW:1000/67927) REJECTED(cost)
  `part` scan 200000/23822 55550/23825
    `supplier` ref:i_s_nationkey 400/7780000 22200000/7800000 PRUNED(cost)
    `partsupp` ref:PRIMARY 4/43570 222200/67395 Semijoin() PRUNED(cost)
  `partsupp` scan 800000/204814 2000000/204817 PRUNED(cost)
`supplier` scan 10000/1040.2 10000/1040.2
  `nation` scan 25/2502.9 10000/3543.2
    `part` scan 200000/22200000 222000000/22200000 PRUNED(cost)
    `partsupp` ref:i_ps_suppkey 80/385841 800000/389384 PRUNED(cost)
  `part` scan 200000/22200000 222000000/22200000 PRUNED(cost)
  `partsupp` ref:i_ps_suppkey 80/385841 800000/386881 PRUNED(cost)
`part` scan 200000/20489 22220/20489
  `nation` scan 25/5558.3 55550/26047
    `supplier` ref:i_s_nationkey 400/7780000 22200000/7800000 PRUNED(cost)
    `partsupp` ref:PRIMARY 4/43570 222200/69617 PRUNED(cost)
  `supplier` scan 10000/22200000 222000000/22200000 PRUNED(cost)
  `partsupp` ref:PRIMARY 4/17428 88880/37917 Semijoin()
    `nation` scan 25/22226 222200/60143 PRUNED(cost)
    `supplier` eq_ref:PRIMARY 1/31108 88880/69025 Semijoin( MS:1/86802 DW:10000/78914) PRUNED(cost)
`partsupp` scan 800000/84814 800000/84814 PRUNED(cost)

select#3:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`lineitem` ref:i_l_partkey_suppkey 7.5058/2.6277 2.2749/2.6277 *** NEW BEST PLAN ***



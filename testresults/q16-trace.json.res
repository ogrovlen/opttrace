select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`part` scan 200000/20489 80001/20489
  `partsupp` ref:i_ps_partkey 4/52088 320004/72577 *** NEW BEST PLAN ***
`partsupp` scan 800000/84814 800000/84814 PRUNED(cost)

select#2:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`supplier` eq_ref:PRIMARY 1/0.35 0.1111/0.35 *** NEW BEST PLAN ***



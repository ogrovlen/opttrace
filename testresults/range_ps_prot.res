select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` range:i2 47/21.66 47/21.66 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` range:i2 47/21.66 47/21.66 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` range:sort_union(i1,i2) 45/31.168 45/31.168 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t2` range:index_for_group_by(i2_1) 103/38.4 103/38.4 Sort cost: 103 Total cost: 141.4 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t2` range:index_for_group_by(i2_1) 103/38.4 103/38.4 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t2` range:i2_1 47/9.9886 47/9.9886 Sort cost: 47 Total cost: 56.989 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t2` ref:i2_1 10/3.5 1.9/3.5 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` range:union(i2,i3) 2/1.4922 2/1.4922 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t2` scan 1024/104.46 347.97/104.46 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t2` range:PRIMARY 1/0.71 1/0.71 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t2` range:PRIMARY 2/1.41 2/1.41 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t2` range:i1b 2/1.16 0.38/1.16 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 1024/104.96 568.84/104.96 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` range:i2 42/19.16 42/19.16 REJECTED(cost)
`t2` ref:PRIMARY 10/149.52 420/168.68 REJECTED(cost)


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` range:intersect(cola,colb) 29/19.907 29/19.907 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` ref:cola 1/0.35 1/0.35 *** NEW BEST PLAN ***


======================================================

select#1:
No trace for greedy search!


======================================================

select#1:
No trace for greedy search!


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` range:k1 2/1.16 2/1.16 Sort cost: 2 Total cost: 3.16 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 2/0.7016 2/0.7016 Sort cost: 2 Total cost: 2.7016 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` range:v_idx 1/0.46 1/0.46 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` range:intersect(i1_idx,PRIMARY) 1/0.4 1/0.4 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` range:b 2/0.6604 0.5/0.6604 Sort cost: 0.5 Total cost: 1.1604 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` ref:k1 1/0.35 1/0.35 *** NEW BEST PLAN ***


======================================================


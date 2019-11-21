select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 288/29.05 153/29.05 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` ref:f2 128/13.55 25.284/13.55 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` range:sort_union(f2,f4) 2/1.612 2/1.612 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` range:union(f2,f3) 136/35.573 136/35.573 *** NEW BEST PLAN ***


======================================================


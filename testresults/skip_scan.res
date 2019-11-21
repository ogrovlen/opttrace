select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t` range:b 3/0.8615 1.5/0.8615 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t` ref:PRIMARY 250/25.492 27.772/25.492 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t` ref:PRIMARY 250/25.492 83.325/25.492 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t` range:index_for_skip_scan(b) 250/70.132 250/70.132 *** NEW BEST PLAN ***


======================================================


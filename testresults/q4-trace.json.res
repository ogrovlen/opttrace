select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`orders` range:i_o_orderdate 109368/49216 109368/49216 Sort cost: 109368 Total cost: 158584 *** NEW BEST PLAN ***

select#2:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`lineitem` ref:PRIMARY 4.0008/0.6533 1.3335/0.6533 *** NEW BEST PLAN ***



select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`customer` scan 150000/15441 150000/15441 Sort cost: 150000 Total cost: 165441 *** NEW BEST PLAN ***

select#4:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`orders` ref:i_o_custkey 15.001/1.7539 15.001/1.7539 *** NEW BEST PLAN ***

select#3:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`customer` scan 150000/15441 49995/15441 *** NEW BEST PLAN ***



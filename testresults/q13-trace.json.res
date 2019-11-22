select#2:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`customer` scan 150000/15441 150000/15441
  `orders` ref:i_o_custkey 15.001/787531 2250000/802972 Sort cost: 2250000 Total cost: 3050000 *** NEW BEST PLAN ***

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
 `c_orders` scan 2250089/253138 2250000/253138 *** NEW BEST PLAN ***



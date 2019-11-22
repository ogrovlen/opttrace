select#3:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`lineitem` range:i_l_shipdate 444500/200064 444500/200064 Sort cost: 444500 Total cost: 644564 *** NEW BEST PLAN ***

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`supplier` scan 10000/1040.2 10000/1040.2
  `revenue0` ref:<auto_key0> 44.45/155575 444500/156615 Sort cost: 444500 Total cost: 601115 *** NEW BEST PLAN ***
`revenue0` scan 444500/50009 44450/50009
  `supplier` eq_ref:PRIMARY 1/15558 44450/65566 Sort cost: 44450 Total cost: 110016 *** NEW BEST PLAN ***

select#4:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`lineitem` range:i_l_shipdate 444500/200064 444500/200064 Sort cost: 444500 Total cost: 644564 *** NEW BEST PLAN ***

select#2:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`revenue0` scan 444500/50009 444500/50009 *** NEW BEST PLAN ***



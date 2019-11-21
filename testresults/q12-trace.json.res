select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`orders` scan 1500000/152971 1500000/152971
  `lineitem` ref:PRIMARY 4.0008/979981 6000000/1130000 Sort cost: 6000000 Total cost: 7130000 *** NEW BEST PLAN ***
`lineitem` scan 6001215/613022 43681/613022
  `orders` eq_ref:PRIMARY 1/15288 43681/628310 Sort cost: 43681 Total cost: 671991 *** NEW BEST PLAN ***



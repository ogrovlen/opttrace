select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 100/10.622 100/10.622 Sort cost: 100 Total cost: 110.62 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 100/10.622 100/10.622 *** NEW BEST PLAN ***


======================================================

select#1:
No trace for greedy search!


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 100/10.622 100/10.622 *** NEW BEST PLAN ***


======================================================

select#1:
No trace for greedy search!


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 100/10.622 33.33/10.622 *** NEW BEST PLAN ***


======================================================

select#1:
No trace for greedy search!


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 100/10.622 33.33/10.622 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 100/10.622 33.33/10.622 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 100/10.622 100/10.622 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 100/10.622 100/10.622 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 100/10.622 100/10.622 *** NEW BEST PLAN ***


======================================================

select#1:
No trace for greedy search!


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 100/10.622 100/10.622 *** NEW BEST PLAN ***


======================================================

select#1:
No trace for greedy search!


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 100/10.622 33.33/10.622 *** NEW BEST PLAN ***


======================================================

select#1:
No trace for greedy search!


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 100/10.622 33.33/10.622 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 100/10.622 33.33/10.622 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 100/10.622 100/10.622 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 100/10.622 100/10.622 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 100/10.622 33.33/10.622 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 100/10.622 33.33/10.622 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 100/10.622 33.33/10.622 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 100/10.622 33.33/10.622 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`tmp` scan 300/30.866 300/30.866
  `t1` scan 500/15001 15000/15032 *** NEW BEST PLAN ***
`t1` scan 500/51.11 500/51.11 PRUNED(heuristic)


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`tmp` scan 300/30.866 300/30.866
  `t1` scan 500/15001 15000/15032 *** NEW BEST PLAN ***
`t1` scan 500/51.11 500/51.11 PRUNED(heuristic)


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`tmp` scan 300/30.866 300/30.866
  `t1` scan 500/15001 15000/15032 *** NEW BEST PLAN ***
`t1` scan 500/51.11 500/51.11 PRUNED(heuristic)


======================================================

select#1:
No trace for greedy search!


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`tmp` scan 300/30.866 300/30.866
  `t1` scan 500/5035 4999.5/5065.8 *** NEW BEST PLAN ***
`t1` scan 500/51.11 166.65/51.11
  `tmp` scan 300/5000.5 4999.5/5051.6 *** NEW BEST PLAN ***


======================================================

select#1:
No trace for greedy search!


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`v1` scan 30/5.875 30/5.875 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`v1` scan 100/13.75 100/13.75 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`v1` scan 100/13.75 100/13.75
  `v2` ref:<auto_key0> 10/350 1000/363.75 *** NEW BEST PLAN ***
`v2` scan 100/13.75 100/13.75
  `v1` ref:<auto_key0> 10/350 1000/363.75 PRUNED(cost)


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 500/51.11 500/51.11 *** NEW BEST PLAN ***


======================================================

select#1:
No trace for greedy search!


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 500/51.11 166.65/51.11 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 500/51.11 166.65/51.11 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 500/51.11 166.65/51.11 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`v1` scan 100/13.75 100/13.75 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 500/51.11 500/51.11
   `d1` ref:<auto_key0> 3/525 1500/576.11 Sort cost: 1500 Total cost: 2076.1 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 500/51.11 500/51.11 *** NEW BEST PLAN ***

select#2:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 500/51.11 500/51.11 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 500/51.11 500/51.11 *** NEW BEST PLAN ***

select#2:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t1` scan 500/51.11 500/51.11 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t` scan 14/1.9183 14/1.9183 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t` scan 14/1.9183 14/1.9183 *** NEW BEST PLAN ***


======================================================

select#1:
Table AccessType:IndexName Rows/Cost TotalRows/TotalCost
--------------------------------------------------------
`t` scan 14/1.9183 14/1.9183 *** NEW BEST PLAN ***


======================================================


Show total reseller sales amount (sum of SalesAmount), calendar quarter of order date, product category name and reseller’s business type by quarter by category and by business type in 2006. Note: your result set should produce a total of 44 rows. */

use AdventureWorks2012
select sales.salesorderheader.TotalDue, sales.salesorderheader.orderdate, production.productcategory.name, 
from sales.salesorderheader, production.productcategory
WITH Quarters AS (
   SELECT Q = 'Q1', MonthBegin = 1, MonthEnd = 3 UNION
   SELECT Q = 'Q2', MonthBegin = 4, MonthEnd = 6 UNION
   SELECT Q = 'Q3', MonthBegin = 7, MonthEnd = 9 UNION
   SELECT Q = 'Q4', MonthBegin = 10, MonthEnd = 12

where sales.salesorderheader.orderdate year= 2006

group by 'Quarters'


/*1, Display number of orders and total sales amount(sum of SalesAmount) of Internet Sales in 1st quarter each year in each country. Note: your result set should produce a total of 18 rows. */
use AdventureWorks2012 
sELECT OnlineOrderFlag = 1, TerritoryID, sum(totaldue) as Total_Sales, orderdate,
from sales.SalesOrderHeader
group by territoryid
order by month(orderdate)

/*2, Show total reseller sales amount (sum of SalesAmount), calendar quarter of order date, product category name and reseller’s business type by quarter by category and by business type in 2006. Note: your result set should produce a total of 44 rows. */
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

/*3, Based on 2, perform an OLAP operation: slice. In comment, describe how you perform the slicing, i.e. what do you do to what dimension(s)? Why is it a operation of slicing?*/
Show total reseller sales amount (sum of SalesAmount), calendar quarter of order date, product category name 
and reseller’s business type by quarter by category and by business type in 2006. 
Describe how you perform the slicing, i.e. what do you do to what dimension(s)? Why is it a operation of slicing?*/

This is an operation of slicing because the action is related to one product category and 
it's performance over time by a particular seller.  it is considering only one dimension for analysis.
In this example, I would take the time dimension and include product and sales for a particular reseller.

use AdventureWorks2012
select sales.salesorderheader.TotalDue, sales.salesorderheader.orderdate, production.productcategory.name, 
from sales.salesorderheader, production.productcategory
group by Qtr 1

/*4, Based on 2, perform an OLAP operation: drill-down. In comment, describe how you perform the drill-down, i.e. what do you do to what dimension(s)? Why is it a operation of drilling-down?*/
Show total reseller sales amount (sum of SalesAmount), calendar quarter of order date, product category name 
and reseller’s business type by quarter by category and by business type in 2006. 
Describe how you perform the drill down, i.e. what do you do to what dimension(s)? Why is it a operation of drill down?*/

This is an operation of drill down because it is drilling down (viewing more detail) and introducing a new dimension. 
Similar to the slicing example, if I take time now and look at it by month rather than by quarter, this would be an example
of drill down.

use AdventureWorks2012
select sales.salesorderheader.TotalDue, sales.salesorderheader.orderdate, production.productcategory.name, 
from sales.salesorderheader, production.productcategory
group by MONTH

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


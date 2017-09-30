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

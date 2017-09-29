use AdventureWorks2012;

/*a.	Show First name and last name of employees whose job title is “Sales Representative”, ranking from oldest to youngest. You may use HumanResources.Employee table and Person.Person table. (14 rows)*/
use AdventureWorks2012
select person.person.firstname, person.person.lastname, humanresources.employee.jobtitle, humanresources.employee.birthdate
from person.person, humanresources.Employee
where humanresources.employee.jobtitle = 'Sales Representative'
SELECT CONCAT(firstname, ' ', lastname) AS customer
select datediff(day,1900-01-01,2017-09-28)/365.25
order by year(datediff), month(datediff)


/*b.	Find out all the products which sold more than $5000 in total. Show product ID and name and total amount collected after selling the products. You may use LineTotal from Sales.SalesOrderDetail table and Production.Product table. (254 rows)*/
use AdventureWorks2012
select production.product.productID, production.product.name, sales.salesorderdetail.UnitPrice
from production.product, sales.salesorderdetail
select sum(unitprice) as totalproductsordered
from sales.salesorderdetail
where totalproductsordered > 5000


/*c.	Show BusinessEntityID, territory name and SalesYTD of all sales persons whose SalesYTD is greater than $500,000, regardless of whether they are assigned a territory. You may use Sales.SalesPerson table and Sales.SalesTerritory table. (16 rows)*/
use AdventureWorks2012

select sales.salesperson.BusinessEntityID, sales.salesterritory.name, sales.salesperson.salesytd

from sales.salesperson, sales.salesterritory

where sales.salesperson.SalesYTD > 500000;



/*d.	Show the sales order ID of those orders in the year 2008 of which the total due is great than the average total due of all the orders of the same year. (3200 rows)*/
use AdventureWorks2012
select sales.SalesOrderHeader.salesorderid, sales.salesorderheader.orderdate, sales.salesorderheader.totaldue
from sales.salesorderheader
where year(orderdate) = 2008; totaldue > (select avg(totaldue)
from sales.salesorderheader
order by totaldue;

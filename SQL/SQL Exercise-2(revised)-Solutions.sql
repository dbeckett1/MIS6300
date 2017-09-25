USE AdventureWorks2012; /*Set current database*/


/*1, Display the total amount collected from the orders for each order date. */

SELECT OrderDate, SUM(TotalDue) as DailyAmount, Count(SalesOrderID) as Number_of_Orders
FROM Sales.SalesOrderHeader
Group by OrderDate
Order by Sum(TotalDue) DESC


/*2, Display the total amount collected from selling each of the products, 774 and 777.*/
SELECT ProductID, 
Sum(LineTotal) as Total_Amount, /* You only need to show this*/
AVG(UnitPrice) as Avg_Unit_Price,
MAX(UnitPrice) as Max_Unit_Price,
MIN(UnitPrice) as Min_Unit_Price,
Sum(OrderQty) as Total_Number_of_Units
FROM Sales.SalesOrderDetail
WHERE ProductID in (774, 777)
/* OR */
/* WHERE ProductID = 774 or ProductID = 777 */
GROUP By ProductID;


/*3, Write a query to display the sales person BusinessEntityID, last name and first name of ALL the sales persons and the name of the territory to which they belong, even though they don't belong to any territory.*/
SELECT P.BusinessEntityID, T.Name as Territory_Name, 
	PP.LastName, PP.FirstName
FROM Sales.SalesPerson as P
Join Sales.SalesTerritory as T
ON P.TerritoryID = T.TerritoryID
JOIN Person.Person as PP
On P.BusinessEntityID = PP.BusinessEntityID;


/*4,  Write a query to display the Business Entities (IDs, names) of the customers that have the 'Vista' credit card.*/
/* Tables: Sales.CreditCard, Sales.PersonCreditCard, Person.Person*/
SELECT Person.BusinessEntityID, CardType,
	LastName, FirstName
FROM Sales.CreditCard
JOIN Sales.PersonCreditCard
ON Sales.CreditCard.CreditCardID = Sales.PersonCreditCard.CreditCardID
JOIN Person.Person
ON Sales.PersonCreditCard.BusinessEntityID=Person.BusinessEntityID
WHERE CardType = 'Vista';

/*5, Write a query to display ALL the countries/regions along with their corresponding territory IDs, including those the countries/regions that do not belong to any territory.*/
/* tables: Sales.SalesTerritory and Person.CountryRegion*/
SELECT CR.CountryRegionCode, CR.Name, ST.TerritoryID
FROM Person.CountryRegion as CR
left outer Join Sales.SalesTerritory as ST
On CR.CountryRegionCode = ST.CountryRegionCode;

/*You can add the code below to list all the countries regions that do not belong to any territory*/
/*WHERE ST.TerritoryID is null; */

/*6, Find out the average of the total dues of all the orders.*/
SELECT AVG(TotalDue)
FROM Sales.SalesOrderHeader;

/*7, Write a query to report the sales order ID of those orders where the total due is greater than the average of the total dues of all the orders*/
SELECT SalesOrderID, TotalDue
FROM Sales.SalesOrderHeader
WHERE TotalDue > 
(SELECT AVG(TotalDue)
FROM Sales.SalesOrderHeader)
ORDER by TotalDue;

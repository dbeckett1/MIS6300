USE AdventureWorks2012;

/*List info of all the sales order detail*/
SELECT *
FROM Sales.SalesOrderDetail;

/*Find out sales info about productID 843*/
SELECT *
FROM Sales.SalesOrderDetail
WHERE ProductID = 843;

/*Sales info of all the products of which unit price is between 100 and 200*/
SELECT *
FROM Sales.SalesOrderDetail
WHERE UnitPrice >100 AND UnitPrice < 200;

/*All the store names*/
SELECT name
FROM Sales.Store;

/*Find out store names that contain "Bike" */
SELECT name
FROM Sales.Store
WHERE name LIKE '%Bike%';
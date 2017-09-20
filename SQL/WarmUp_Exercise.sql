use AdventureWorks2012;

/*List info of all the sales order details*/
SELECT *
FROM Sales.SalesOrderDetail;

/*Find out sales info about Product (ID = 843, 845, 847)*/
SELECT *
FROM Sales.SalesOrderDetail
WHERE productID in (843, 845, 847);

/*Sales info of all the products of which unit price is between 100 and 200*/
SELECT *
FROM Sales.SalesOrderDetail
/*WHERE UnitPrice BETWEEN 100 AND 200*/
WHERE UnitPrice >= 100 AND UnitPrice <= 200
ORDER BY UnitPrice;

/*All the store names*/
SELECT DISTINCT Name
FROM Sales.Store;

/*Find out store names that contain "Bike" */
SELECT name
FROM sales.Store
WHERE name LIKE ('%Bike%Shop%') OR name LIKE ('%Shop%Bike%');
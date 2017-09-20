Use AdventureWorks2012;

/*1. Using the HumanResource.Employee table, provide a count of the number of employees by job title.  The query should consider only current employees (the CurrentFlag must equal 1).  */

Select JobTitle, count(BusinessEntityID) as Number_of_Employees
from HumanResources.Employee
WHERE CurrentFlag = 1
GROUP BY JobTitle
ORDER BY count(BusinessEntityID) DESC;

/*2. Modify the query you created in Activity 1 so that the output shows only those job titles for which there is more than 1 employee.  */
Select JobTitle, count(BusinessEntityID) as Number_of_Employees
from HumanResources.Employee
WHERE CurrentFlag = 1
GROUP BY JobTitle
Having count(BusinessEntityID) > 1
ORDER BY count(BusinessEntityID) DESC;
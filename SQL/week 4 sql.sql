use AdventureWorks2012 
sELECT OnlineOrderFlag = 1, TerritoryID, sum(totaldue) as Total_Sales, orderdate,
from sales.SalesOrderHeader
group by territoryid
order by month(orderdate)



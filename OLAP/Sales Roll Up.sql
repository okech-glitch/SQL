select SalesYear,SalesMonth,ItemType,Salesman, sum (SalesAmount) as TotalSales
from Sales
GROUP BY ROLLUP (SalesYear,SalesMonth,ItemType,Salesman)
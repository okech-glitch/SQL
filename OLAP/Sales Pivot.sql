SELECT SalesYear, [Chocolate], [Popsicles], [Bacon]
FROM Sales
PIVOT
(
    SUM(SalesAmount) FOR ItemType IN ([Chocolate], [Popsicles], [Bacon])
) AS PivotAvgQuantity;

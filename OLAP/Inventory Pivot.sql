SELECT warehouse, [Galaxy S], [Note 8]
FROM Inventory
PIVOT
(
    AVG(quantity) FOR model IN ([Galaxy S], [Note 8])
) AS PivotAvgQuantity;

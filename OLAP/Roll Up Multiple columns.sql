SELECT Warehouse, Product, sum(Quantity) AS QuantitySum
FROM Inventory
GROUP BY ROLLUP (Warehouse, Product)
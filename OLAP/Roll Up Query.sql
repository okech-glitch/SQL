SELECT Product, sum(Quantity) AS QuantitySum
FROM Inventory
GROUP BY ROLLUP (Product)
select Product, Model, AVG  (Quantity) as QuantitySum
from Inventory
GROUP BY ROLLUP (Product, Model) 
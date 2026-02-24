-- CQ3b: Top SKUs per Category
SELECT
    p.Category,
    t.Product_ID,
    SUM(t.Line_Total) AS Total_Revenue,
    SUM(t.Quantity) AS Total_Units
FROM transactions t
JOIN products p
    ON t.Product_ID = p.Product_ID
GROUP BY p.Category, t.Product_ID
ORDER BY p.Category, Total_Revenue DESC;
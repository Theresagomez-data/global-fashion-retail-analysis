-- CQ3a: Revenue and Units by Product Category
SELECT
    p.Category,
    SUM(t.Line_Total) AS Total_Revenue,
    SUM(t.Quantity) AS Total_Units
FROM transactions t
JOIN products p
    ON t.Product_ID = p.Product_ID
GROUP BY p.Category
ORDER BY Total_Revenue DESC;
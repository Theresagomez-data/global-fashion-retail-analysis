-- CQ4b: Average unit price by product category and country
SELECT
    s.Country,
    p.Category,
    AVG(t.Unit_Price) AS Avg_Unit_Price
FROM transactions t
JOIN stores s
    ON t.Store_ID = s.Store_ID
JOIN products p
    ON t.Product_ID = p.Product_ID
GROUP BY s.Country, p.Category
ORDER BY s.Country, Avg_Unit_Price DESC;
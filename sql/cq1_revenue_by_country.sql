-- CQ1a: Revenue by Country
SELECT
    s.Country,
    SUM(t.Line_Total) AS Total_Revenue
FROM transactions t
JOIN stores s
    ON t.Store_ID = s.Store_ID
GROUP BY s.Country
ORDER BY Total_Revenue DESC;
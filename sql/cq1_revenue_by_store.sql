-- CQ1b: Revenue by Store
SELECT
    s.Country,
    s.Store_Name,
    SUM(t.Line_Total) AS Total_Revenue
FROM transactions t
JOIN stores s
    ON t.Store_ID = s.Store_ID
GROUP BY s.Country, s.Store_Name
ORDER BY Total_Revenue DESC;
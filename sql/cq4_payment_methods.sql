-- CQ4b: Average Unit Price by Country and Category
SELECT
    t.Payment_Method,
    SUM(t.Line_Total) AS Total_Revenue,
    COUNT(*) AS Transaction_Count
FROM transactions t
GROUP BY t.Payment_Method
ORDER BY Total_Revenue DESC;
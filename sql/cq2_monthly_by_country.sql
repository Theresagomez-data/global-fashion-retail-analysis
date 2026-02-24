-- CQ2b: Monthly Revenue by Country
SELECT
    strftime('%Y-%m', Date) AS YearMonth,
    s.Country,
    SUM(t.Line_Total) AS Total_Revenue
FROM transactions t
JOIN stores s
    ON t.Store_ID = s.Store_ID
GROUP BY YearMonth, s.Country
ORDER BY YearMonth, s.Country;
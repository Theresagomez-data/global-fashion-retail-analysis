-- CQ2a: Monthly revenue across all stores
SELECT
    strftime('%Y-%m', Date) AS YearMonth,
    SUM(t.Line_Total) AS Total_Revenue
FROM transactions t
GROUP BY YearMonth
ORDER BY YearMonth;
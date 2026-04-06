-- =====================================================
-- Monthly Sales Trend
-- =====================================================

SELECT 
    d.year,
    d.month,
    TO_CHAR(SUM(f.total_amount), 'FM999,999,999.00') AS monthly_sales,
    COUNT(*) AS transactions
FROM fact_sales f
JOIN dim_date d ON f.date_key = d.date_key
GROUP BY d.year, d.month
ORDER BY d.year, d.month
LIMIT 12;

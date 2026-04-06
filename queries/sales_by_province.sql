-- =====================================================
-- Sales Analysis by Province
-- Results: Western Cape R286,737.71 | Eastern Cape R262,029.34
-- =====================================================

SELECT 
    c.province,
    TO_CHAR(SUM(f.total_amount), 'FM999,999,999.00') AS total_sales,
    COUNT(DISTINCT c.customer_sk) AS unique_customers
FROM fact_sales f
JOIN dim_customer c ON f.customer_sk = c.customer_sk
WHERE c.is_current = TRUE
GROUP BY c.province
ORDER BY SUM(f.total_amount) DESC;

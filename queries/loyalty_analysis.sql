-- =====================================================
-- Customer Loyalty Tier Analysis
-- =====================================================

SELECT 
    c.loyalty_tier,
    COUNT(DISTINCT c.customer_sk) AS customer_count,
    TO_CHAR(SUM(f.total_amount), 'FM999,999,999.00') AS total_spent,
    TO_CHAR(AVG(f.total_amount), 'FM999,999.00') AS avg_transaction
FROM fact_sales f
JOIN dim_customer c ON f.customer_sk = c.customer_sk
WHERE c.is_current = TRUE
GROUP BY c.loyalty_tier
ORDER BY SUM(f.total_amount) DESC;

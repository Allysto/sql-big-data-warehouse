-- =====================================================
-- Top 10 Best Selling Products
-- =====================================================

SELECT 
    p.product_name,
    p.category,
    SUM(f.quantity) AS units_sold,
    TO_CHAR(SUM(f.total_amount), 'FM999,999,999.00') AS revenue
FROM fact_sales f
JOIN dim_product p ON f.product_sk = p.product_sk
GROUP BY p.product_name, p.category
ORDER BY SUM(f.total_amount) DESC
LIMIT 10;

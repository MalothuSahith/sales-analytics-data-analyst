-- View all data
SELECT * FROM sales_data;

-- Total Revenue
SELECT 
    SUM(payment_value) AS total_revenue
FROM sales_data;

-- Monthly Revenue Trend
SELECT 
    strftime('%Y-%m', order_date) AS month,
    SUM(payment_value) AS monthly_revenue
FROM sales_data
GROUP BY month
ORDER BY month;

-- Top Selling Products
SELECT 
    product,
    SUM(payment_value) AS revenue
FROM sales_data
GROUP BY product
ORDER BY revenue DESC;

-- Revenue by Region
SELECT 
    region,
    SUM(payment_value) AS revenue
FROM sales_data
GROUP BY region
ORDER BY revenue DESC;

-- Customer Spending
SELECT 
    customer_id,
    SUM(payment_value) AS total_spent
FROM sales_data
GROUP BY customer_id
ORDER BY total_spent DESC;

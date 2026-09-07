-- Query 1
SELECT 
    SUM(total_price) AS Total_Sales,
    COUNT(sale_id) AS Total_Transactions,
    AVG(total_price) AS Average_Transaction_Value
FROM sales;

-- Query 2
SELECT 
    city,
    SUM(total_price) AS Total_City_Sales,
    COUNT(sale_id) AS Total_Orders
FROM sales
GROUP BY city
ORDER BY Total_City_Sales DESC;

-- Query 3
SELECT 
    branch,
    SUM(total_price) AS Total_Branch_Sales,
    COUNT(sale_id) AS Total_Transactions
FROM sales
GROUP BY branch
ORDER BY Total_Branch_Sales DESC;

-- Query 4
SELECT 
    gender,
    COUNT(sale_id) AS Total_Customers,
    SUM(total_price) AS Total_Spend,
    AVG(total_price) AS Avg_Spend_Per_Gender
FROM sales
GROUP BY gender;

-- Query 5
SELECT 
    product_category,
    SUM(total_price) AS Category_Revenue,
    SUM(quantity) AS Total_Units_Sold
FROM sales
GROUP BY product_category
ORDER BY Category_Revenue DESC;

-- Query 6
SELECT 
    product_category,
    SUM(quantity) AS Total_Quantity
FROM sales
GROUP BY product_category
HAVING SUM(quantity) > 16
ORDER BY Total_Quantity DESC;

-- Query 7
SELECT 
    product_name,
    COUNT(sale_id) AS Orders_Count,
    SUM(total_price) AS Total_Revenue
FROM sales
GROUP BY product_name
ORDER BY Orders_Count DESC;

-- Query 8
SELECT 
    product_category,
    AVG(unit_price) AS Avg_Unit_Price
FROM sales
GROUP BY product_category
ORDER BY Avg_Unit_Price DESC;

-- Query 9
SELECT 
    sale_id,
    city,
    branch,
    product_category,
    total_price
FROM sales
WHERE total_price > 300
ORDER BY total_price DESC;

-- Query 10
SELECT 
    customer_type,
    COUNT(sale_id) AS Total_Orders,
    SUM(total_price) AS Total_Sales,
    AVG(total_price) AS Average_Order_Value
FROM sales
GROUP BY customer_type;

-- Query 11
SELECT 
    branch,
    city,
    SUM(reward_points) AS Total_Branch_Points
FROM sales
GROUP BY branch, city
ORDER BY Total_Branch_Points DESC;

-- Query 12
SELECT 
    product_category,
    AVG(total_price) AS Avg_Category_Sales
FROM sales
GROUP BY product_category
ORDER BY Avg_Category_Sales DESC;

-- Query 13
SELECT 
    branch,
    AVG(unit_price) AS Avg_Branch_Unit_Price,
    SUM(total_price) AS Total_Branch_Revenue
FROM sales
GROUP BY branch
ORDER BY Total_Branch_Revenue DESC;

-- Query 14
SELECT TOP 5 
    sale_id,
    city,
    branch,
    product_category,
    total_price
FROM sales
ORDER BY total_price DESC;

-- Query 15
SELECT 
    product_category,
    SUM(quantity) AS Total_Units_Sold,
    SUM(total_price) AS Total_Revenue
FROM sales
GROUP BY product_category
HAVING SUM(quantity) < 150
ORDER BY Total_Units_Sold ASC;

-- Query 16
SELECT 
    city,
    branch,
    SUM(tax) AS Total_Tax_Collected
FROM sales
GROUP BY city, branch
ORDER BY Total_Tax_Collected DESC;

-- Query 17
SELECT 
    branch,
    product_category,
    SUM(total_price) AS Total_Category_Sales,
    AVG(unit_price) AS Avg_Unit_Price
FROM sales
GROUP BY branch, product_category
ORDER BY branch ASC, Total_Category_Sales DESC;
use coffesalesanalysis  ;

-- 1, Total Sales per Day

SELECT transaction_date, SUM(transaction_qty * unit_price) AS total_sales
FROM coffeesales
GROUP BY transaction_date;

-- 2, Total Quantity Sold per Product Category

SELECT product_category, SUM(transaction_qty) AS total_quantity_sold
FROM coffeesales
GROUP BY product_category;

-- 3,Average Transaction Amount per Store Location

SELECT store_location, AVG(transaction_qty * unit_price) AS avg_transaction_amount
FROM coffeesales
GROUP BY store_location;

-- 4 Top 5 Best-Selling Products

SELECT product_detail, SUM(transaction_qty) AS total_quantity_sold
FROM coffeesales
GROUP BY product_detail
ORDER BY total_quantity_sold DESC
LIMIT 5;

-- 5 Monthly Sales Breakdown

SELECT DATE_FORMAT(transaction_date, '%Y-%m') AS month, SUM(transaction_qty * unit_price) AS total_sales
FROM coffeesales
GROUP BY month;

--  6 Total Revenue per Store

SELECT store_id, SUM(transaction_qty * unit_price) AS total_revenue
FROM coffeesales
GROUP BY store_id;
-- 7 Most Popular Product Category in Each Store

SELECT store_id, product_category, SUM(transaction_qty) AS total_quantity_sold
FROM coffeesales
GROUP BY store_id, product_category
ORDER BY store_id, total_quantity_sold DESC;

--  8 ,Total Sales per Hour of the Day
SELECT HOUR(transaction_time) AS hour, SUM(transaction_qty * unit_price) AS total_sales
FROM coffeesales
GROUP BY hour;

--  9 Highest Revenue Generating Product per Store

SELECT store_id, product_detail, SUM(transaction_qty * unit_price) AS total_revenue
FROM coffeesales
GROUP BY store_id, product_detail
ORDER BY store_id, total_revenue DESC;

 -- 10 Daily Average Sales per Product Type

SELECT product_type, AVG(transaction_qty * unit_price) AS avg_daily_sales
FROM coffeesales
GROUP BY product_type;

-- 11 Number of Transactions per Store Location

SELECT store_location, COUNT(transaction_id) AS number_of_transactions
FROM coffeesales
GROUP BY store_location;
--  12 Total Sales for Each Product Category per Month

SELECT DATE_FORMAT(transaction_date, '%Y-%m') AS month, product_category, SUM(transaction_qty * unit_price) AS total_sales
FROM coffeesales
GROUP BY month, product_category;
--  12 Average Quantity Sold per Transaction

SELECT AVG(transaction_qty) AS avg_quantity_sold
FROM coffeesales;

-- 13 Revenue from Each Product Type

SELECT product_type, SUM(transaction_qty * unit_price) AS total_revenue
FROM coffeesales
GROUP BY product_type;

-- 14 Total Sales per Store per Month


SELECT store_id, DATE_FORMAT(transaction_date, '%Y-%m') AS month, SUM(transaction_qty * unit_price) AS total_sales
FROM coffeesales
GROUP BY store_id, month;
-- 15 Most Common Transaction Quantity

SELECT transaction_qty, COUNT(transaction_id) AS frequency
FROM coffeesales
GROUP BY transaction_qty
ORDER BY frequency DESC
LIMIT 1;

--  16  Total Revenue from Each Store Location

SELECT store_location, SUM(transaction_qty * unit_price) AS total_revenue
FROM coffeesales
GROUP BY store_location;

--  17, Top 3 Best-Selling Product Categories per Store

SELECT store_id, product_category, SUM(transaction_qty) AS total_quantity_sold
FROM coffeesales
GROUP BY store_id, product_category
ORDER BY store_id, total_quantity_sold DESC
LIMIT 3;
-- 18 Revenue Contribution of Each Product Type per Month

SELECT DATE_FORMAT(transaction_date, '%Y-%m') AS month, product_type, SUM(transaction_qty * unit_price) AS total_revenue
FROM coffee_shop_sales
GROUP BY month, product_type;
--  19 Average Unit Price per Product Category

SELECT product_category, AVG(unit_price) AS avg_unit_price
FROM coffeesales
GROUP BY product_category;
 
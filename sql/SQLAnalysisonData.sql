-- SQL Analysis: 
-- 1. Top 10 Products:
SELECT productname as "Product Name",SUM(sales) as "Total Sales"
FROM superstore
GROUP BY productname
ORDER BY "Total Sales" DESC
LIMIT 10;

------------------------------------------------------------------

-- 2. Profit by Region:
SELECT region as "Region",SUM(profit) as "Total Profit"
FROM superstore
GROUP BY region;

------------------------------------------------------------------

-- 3. Loss-Making Products:
SELECT productname as "Product Name",SUM(profit) as "Total Profit"
FROM superstore
GROUP BY productname
HAVING SUM(profit) < 0;

------------------------------------------------------------------

-- 4. Monthly Sales trends:
SELECT month as "Month",SUM(sales) as "Total Sales"
FROM superstore
GROUP BY month
ORDER BY month;

------------------------------------------------------------------

-- 5. Top 10 Customers:
SELECT customername as "Customers",SUM(sales) as "Total Sales"
FROM superstore
GROUP BY customername
ORDER BY "Total Sales" DESC
LIMIT 10;

------------------------------------------------------------------

-- 6. Customer Lifetime Value:
SELECT customerid as "Customer Id", SUM(sales) as "Lifetime Value"
FROM superstore
GROUP BY customerid
ORDER BY "Lifetime Value" DESC;

------------------------------------------------------------------

-- 7. Category Profit Ranking:
SELECT category as "Category",SUM(profit) as "Total Profit"
FROM superstore
GROUP BY category
ORDER BY "Total Profit" DESC;

------------------------------------------------------------------

-- 8. Repeat Customers:
SELECT customerid,COUNT(orderid) as "total_orders"
FROM superstore
GROUP BY customerid
HAVING COUNT(orderid) > 1;
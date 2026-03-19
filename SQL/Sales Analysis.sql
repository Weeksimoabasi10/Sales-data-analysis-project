/*select *
from [30PROJECTS].[dbo].[Sample - Superstore];

select count(*) as row_count
from [Sample - Superstore]

select *
from [Sample - Superstore]
where Country is null ;

SELECT Sales, COUNT(*)
FROM [Sample - Superstore]
GROUP BY Sales
HAVING COUNT(*) > 1;

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Sample - Superstore';


ALTER TABLE [Sample - Superstore]
ALTER COLUMN City varchar(20);

ALTER TABLE [Sample - Superstore]
ALTER COLUMN State varchar(50);

ALTER TABLE [Sample - Superstore]
ALTER COLUMN country varchar(50);

ALTER TABLE [Sample - Superstore]
ALTER COLUMN Category varchar(50);

/* PHASE 1

/*total sales*/
SELECT SUM(Sales) as total_sales
FROM [Sample - Superstore];*/

/*TOTAL ORDERS*/
SELECT COUNT(DISTINCT Order_ID) AS TOTAL_ORDERS
FROM [Sample - Superstore]*/

/* TOTAL PROFIT 
SELECT SUM (PROFIT) AS TOTRAL_PROFIT
FROM [Sample - Superstore];



PHASE 2

/*Sales by region*/
Select Region, SUM(Sales)
FROM [Sample - Superstore]
group by Region
order by SUM(Sales)desc;*/

/* SALES BY CATEGORY
SELECT CATEGORY, SUM(SALES) AS TOTAL_SALES
FROM [Sample - Superstore]
GROUP BY CATEGORY
ORDER BY SUM(SALES) DESC;*/

/* SALES BY SUB_CATEGORY
SELECT SUB_CATEGORY, SUM(SALES) AS TOTAL_SALES_PER_SUB_cATEGORY
FROM [Sample - Superstore]
GROUP BY Sub_Category
ORDER BY SUM(Sales) DESC ;*/


/*PHASE 3*/


/* Top 10 Products*/
/*select Product_Name, SUM(Sales) as total_sales
from [Sample - Superstore]
group by Product_Name
order by SUM(Sales) desc;*/


/* HIGHEST SELLING PRODUCTS

SELECT TOP 10 PRODUCT_NAME, SUM(SALES) AS TOTAL_SALES
FROM [Sample - Superstore]
GROUP BY Product_Name
ORDER BY SUM(SALES) DESC;


LOWEST SELLING PRODUCT

SELECT TOP 20 PRODUCT_NAME, SUM(SALES) AS TOTAL_SALES
FROM [Sample - Superstore]
GROUP BY Product_Name
ORDER BY SUM(SALES) ASC;*/



/*PHASE 4

YEARLY SALES TREND

SELECT YEAR(order_date) AS order_year,
SUM(sales) AS total_sales
FROM [Sample - Superstore]
GROUP BY YEAR(order_date)
ORDER BY order_year DESC;*/


/*MONTHLY SALES TREND

SELECT 
MONTH(order_date) AS order_month,
SUM(sales) AS total_sales
FROM [Sample - Superstore]
GROUP BY MONTH(order_date)
ORDER BY order_month;*/

/*SELECT DISCOUNT, SUM(PROFIT) AS AVG_ANALYSIS
FROM [Sample - Superstore]
GROUP BY Discount
ORDER BY Discount;*/



/* NEW ANALYSIS BY PROFIT*/
/*SELECT CATEGORY, SUM(PROFIT) AS TOTAL_PROFIT
FROM [Sample - Superstore]
GROUP BY Category
ORDER BY TOTAL_PROFIT DESC;


SELECT region, SUM(profit) AS total_profit
FROM [Sample - Superstore]
GROUP BY region
ORDER BY total_profit DESC;*/

/*SELECT TOP 10 product_name, SUM(profit) AS total_profit
FROM [Sample - Superstore]
GROUP BY product_name
ORDER BY total_profit DESC;

SELECT TOP 10 product_name, SUM(profit) AS total_profit
FROM [Sample - Superstore]
GROUP BY product_name
ORDER BY total_profit ASC;

DISCOUNT ANALYSIS

SELECT Discount, AVG(PROFIT) AS AVG_PROFIT
FROM [30PROJECTS].[dbo].[Sample - Superstore]
GROUP BY Discount
ORDER BY Discount;


SELECT 
    discount,
    COUNT(*) AS number_of_orders,
    AVG(profit) AS avg_profit,
    SUM(sales) AS total_sales
FROM [30PROJECTS].[dbo].[Sample - Superstore]
GROUP BY discount
ORDER BY discount;*/



SELECT 
    order_date,
    Order_ID,
    Product_Name,
    region,
    category,
    sub_category,
    sales,
    profit,
    quantity,
    discount
FROM [30PROJECTS].[dbo].[Sample - Superstore];


SELECT TOP 10 
product_name,
SUM(profit) AS total_profit
FROM [30PROJECTS].[dbo].[Sample - Superstore]
GROUP BY product_name
ORDER BY total_profit DESC;
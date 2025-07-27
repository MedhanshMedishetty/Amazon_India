CREATE DATABASE amazon_india;
USE amazon_india;
DROP TABLE orders;
CREATE TABLE orders (
    Row_Index INT,
    Order_ID VARCHAR(30),
    Order_Date VARCHAR(20),
    Status VARCHAR(100),
    Fulfilment VARCHAR(50),
    Sales_Channel VARCHAR(50),
    Ship_Service_Level VARCHAR(50),
    Style VARCHAR(50),
    SKU VARCHAR(100),
    Category VARCHAR(50),
    Size VARCHAR(20),
    ASIN VARCHAR(50),
    Courier_Status VARCHAR(50),
    Qty INT,
    Currency VARCHAR(10),
    Amount VARCHAR(20),
    Ship_City VARCHAR(100),
    Ship_State VARCHAR(100),
    Ship_Postal_Code VARCHAR(20),
    Ship_Country VARCHAR(50),
    Promotion_IDs TEXT,
    B2B VARCHAR(20),
    Fulfilled_By VARCHAR(50)
);

CREATE TABLE orders_cleaned AS
SELECT
    Row_Index,
    Order_ID,
    
    -- Convert string to DATE
    STR_TO_DATE(Order_Date, '%m-%d-%y') AS Order_Date,
    
    Status,
    Fulfilment,
    Sales_Channel,
    Ship_Service_Level,
    Style,
    SKU,
    Category,
    Size,
    ASIN,
    Courier_Status,
    Qty,
    
    -- Only cast if amount is numeric
    CASE 
        WHEN Amount REGEXP '^[0-9]+(\\.[0-9]{1,2})?$' THEN CAST(Amount AS DECIMAL(10,2))
        ELSE NULL
    END AS Amount,
    
    Currency,
    Ship_City,
    Ship_State,
    
    -- Clean postal code
    TRIM(Ship_Postal_Code) AS Ship_Postal_Code,
    
    Ship_Country,
    Promotion_IDs,
    
    -- Clean B2B
    CASE
        WHEN B2B = 'True' THEN 1
        ELSE 0
    END AS B2B,
    
    Fulfilled_By

FROM orders;


-- Confirm dates are working
SELECT Order_Date FROM orders_cleaned LIMIT 5;

-- Check if amount is numeric
SELECT Amount FROM orders_cleaned ORDER BY Amount DESC LIMIT 5;

-- Confirm boolean values
SELECT DISTINCT B2B FROM orders_cleaned;


SELECT 
  COUNT(*) AS total_orders,
  SUM(Amount) AS total_revenue,
  ROUND(AVG(Amount), 2) AS avg_order_value
FROM orders_cleaned;


SELECT 
  Category,
  COUNT(*) AS total_orders,
  SUM(Amount) AS total_revenue,
  ROUND(AVG(Amount), 2) AS avg_order_value
FROM orders_cleaned
GROUP BY Category
ORDER BY total_revenue DESC;


SELECT 
  Ship_State,
  COUNT(*) AS total_orders,
  SUM(Amount) AS total_revenue,
  ROUND(AVG(Amount), 2) AS avg_order_value
FROM orders_cleaned
GROUP BY Ship_State
ORDER BY total_revenue DESC;


SELECT 
  Fulfilment,
  COUNT(*) AS total_orders,
  SUM(Amount) AS total_revenue,
  ROUND(AVG(Amount), 2) AS avg_order_value
FROM orders_cleaned
GROUP BY Fulfilment
ORDER BY total_revenue DESC;


SELECT 
  Status,
  COUNT(*) AS total_orders,
  SUM(Amount) AS total_revenue,
  ROUND(AVG(Amount), 2) AS avg_order_value
FROM orders_cleaned
GROUP BY Status
ORDER BY total_orders DESC;
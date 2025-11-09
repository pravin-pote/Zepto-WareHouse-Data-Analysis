-- Zepto SQL Data Exploration Project
-- Author: Pravin P. Pote
-- MySQL Version: 8.2

CREATE DATABASE zepto;
USE zepto;

SHOW GLOBAL VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile = 1;

SELECT COUNT(*) FROM products;
SELECT * FROM products LIMIT 10;

SELECT *
FROM products
WHERE category IS NULL
   OR name IS NULL
   OR discountpercent IS NULL
   OR availablequantity IS NULL
   OR discountedsellingprice IS NULL
   OR weightingms IS NULL
   OR outofstock IS NULL
   OR quantity IS NULL;

SELECT DISTINCT category FROM products ORDER BY category;

SELECT * FROM products WHERE mrp = 0 AND discountedsellingprice = 0;
DELETE FROM products WHERE mrp = 0;

SELECT DISTINCT name, mrp, discountpercent
FROM products
ORDER BY discountpercent DESC
LIMIT 10;

SELECT DISTINCT name, mrp, outofstock
FROM products
WHERE outofstock = "TRUE"
ORDER BY mrp DESC
LIMIT 10;

SELECT DISTINCT category, 
       SUM(discountedsellingprice * availablequantity) AS revenue
FROM products
GROUP BY category
ORDER BY revenue;

SELECT name, discountedsellingprice, discountpercent
FROM products
WHERE discountedsellingprice > 500 
  AND discountpercent < 10
ORDER BY name DESC
LIMIT 10;

SELECT DISTINCT category, AVG(discountpercent) AS discount_offered
FROM products
GROUP BY category
ORDER BY discount_offered DESC;

SELECT DISTINCT name, 
       ROUND(discountedsellingprice / weightingms) AS per_gram_price
FROM products
WHERE weightingms > 100
ORDER BY per_gram_price DESC
LIMIT 10;

SELECT DISTINCT name, weightingms,
CASE 
    WHEN weightingms > 1000 THEN 'Bulk'
    WHEN weightingms BETWEEN 500 AND 1000 THEN 'Medium'
    WHEN weightingms < 500 THEN 'Low'
    ELSE 'Unknown'
END AS total_cat
FROM products
ORDER BY name;

SELECT DISTINCT category, (SUM(weightingms)/1000) AS total_weight
FROM products
GROUP BY category;

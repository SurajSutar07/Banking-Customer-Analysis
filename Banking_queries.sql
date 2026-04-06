create database banking_case;
use banking_case;
show tables;
select * from customer;
DESCRIBE customer;

-- DATA CLEANING:
-- Fix column name
ALTER TABLE customer
CHANGE COLUMN `ï»¿Client ID` `Client ID` VARCHAR(20);


-- Q1. How many total customers are in the dataset?
SELECT COUNT(*) AS total_customers FROM customer;


-- Q2. What is the total and average balance of customers?
SELECT 
    SUM(`Bank Deposits` + `Saving Accounts` + `Checking Accounts`) AS total_balance,
    AVG(`Bank Deposits` + `Saving Accounts` + `Checking Accounts`) AS avg_balance
FROM customer;


-- 🔹 Q3. What is the total deposit amount?
SELECT 
    SUM(`Bank Deposits`) AS total_deposits
FROM customer;


-- SEGMENTATION:
-- Q4. How are customers distributed by gender?
SELECT 
    GenderId,
    COUNT(*) AS customers,
    AVG(`Bank Deposits`) AS avg_balance
FROM customer
GROUP BY GenderId;


-- Q5. Which age group has the most customers?
SELECT 
    CASE 
        WHEN Age < 25 THEN '18-25'
        WHEN Age BETWEEN 25 AND 40 THEN '25-40'
        WHEN Age BETWEEN 41 AND 60 THEN '41-60'
        ELSE '60+'
    END AS age_group,
    COUNT(*) AS customers,
    AVG(`Bank Deposits`) AS avg_balance
FROM customer
GROUP BY age_group
ORDER BY customers DESC;


--  ENGAGEMENT ANALYSIS
-- Q6. How do you identify engaged customers?
SELECT 
    `Client ID`,
    `Bank Deposits`,
    `Amount of Credit Cards`,
    CASE 
        WHEN `Bank Deposits` > 5000 
             AND `Amount of Credit Cards` > 1 
        THEN 'Engaged'
        ELSE 'Not Engaged'
    END AS engagement_status
FROM customer;


-- Q7. What is the engagement rate?
SELECT 
    COUNT(CASE 
        WHEN `Bank Deposits` > 5000 
             AND `Amount of Credit Cards` > 1 
        THEN 1 END) * 100.0 / COUNT(*) AS engagement_rate
FROM customer;


-- Q8. How many customers are engaged vs not engaged?
SELECT 
    CASE 
        WHEN `Bank Deposits` > 5000 
             AND `Amount of Credit Cards` > 1 
        THEN 'Engaged'
        ELSE 'Not Engaged'
    END AS engagement_status,
    COUNT(*) AS customers
FROM customer
GROUP BY engagement_status;


-- CUSTOMER VALUE:
-- Q9. How do you calculate the total balance for each customer?
SELECT 
    `Client ID`,
    (`Bank Deposits` + `Saving Accounts` + `Checking Accounts`) AS total_balance
FROM customer;


-- Q10. How did you rank customers by value?
SELECT 
    `Client ID`,
    (`Bank Deposits` + `Saving Accounts` + `Checking Accounts`) AS total_balance,
    RANK() OVER (
        ORDER BY (`Bank Deposits` + `Saving Accounts` + `Checking Accounts`) DESC
    ) AS rank_position
FROM customer;


-- Q11. Who are the top 10 high-value customers?
SELECT 
    `Client ID`,
    (`Bank Deposits` + `Saving Accounts` + `Checking Accounts`) AS total_balance
FROM customer
ORDER BY total_balance DESC
LIMIT 10;

-- Credit Cards:
-- Q12. What is the relationship between credit cards and balance?
SELECT 
    `Amount of Credit Cards`,
    COUNT(*) AS customers,
    AVG(`Bank Deposits`) AS avg_balance
FROM customer
GROUP BY `Amount of Credit Cards`;


USE ecomm;

-- ============================================================
-- E-Commerce Customer Churn Analysis
-- Business Analysis Queries
-- ============================================================
-- Run the original Ecommerce_Customer_Churn_Analysis.sql first.
-- This file assumes the cleaned/transformed customer_churn table
-- and the customer_returns table already exist.
--
-- Purpose:
-- Provide a clean, recruiter-friendly view of the key SQL
-- business questions in this project.
-- ============================================================


-- 1. Active vs Churned Customers
SELECT
    ChurnStatus,
    COUNT(*) AS CustomerCount
FROM customer_churn
GROUP BY ChurnStatus;


-- 2. Average Tenure and Total Cashback of Churned Customers
SELECT
    AVG(Tenure) AS AverageTenure,
    SUM(CashbackAmount) AS TotalCashback
FROM customer_churn
WHERE ChurnStatus = 'Churned';


-- 3. Percentage of Churned Customers Who Complained
SELECT
    ROUND(
        100.0 * SUM(ComplaintReceived = 'Yes') / COUNT(*),
        2
    ) AS PercentageChurnedWhoComplained
FROM customer_churn
WHERE ChurnStatus = 'Churned';


-- 4. City Tier with the Most Churned Laptop & Accessory Customers
SELECT
    CityTier,
    COUNT(*) AS CustomerCount
FROM customer_churn
WHERE ChurnStatus = 'Churned'
  AND PreferredOrderCat = 'Laptop & Accessory'
GROUP BY CityTier
ORDER BY CustomerCount DESC
LIMIT 1;


-- 5. Most Common Payment Mode Among Active Customers
SELECT
    PreferredPaymentMode,
    COUNT(*) AS CustomerCount
FROM customer_churn
WHERE ChurnStatus = 'Active'
GROUP BY PreferredPaymentMode
ORDER BY CustomerCount DESC
LIMIT 1;


-- 6. Total Order Amount Hike for Single Customers Buying Mobile Phones
SELECT
    SUM(OrderAmountHikeFromlastYear) AS TotalOrderAmountHike
FROM customer_churn
WHERE MaritalStatus = 'Single'
  AND PreferredOrderCat = 'Mobile Phone';


-- 7. Average Registered Devices Among UPI Customers
SELECT
    AVG(NumberOfDeviceRegistered) AS AverageDevices
FROM customer_churn
WHERE PreferredPaymentMode = 'UPI';


-- 8. City Tier with the Highest Number of Customers
SELECT
    CityTier,
    COUNT(*) AS CustomerCount
FROM customer_churn
GROUP BY CityTier
ORDER BY CustomerCount DESC
LIMIT 1;


-- 9. Gender with the Highest Coupon Usage
SELECT
    Gender,
    SUM(CouponUsed) AS TotalCoupons
FROM customer_churn
GROUP BY Gender
ORDER BY TotalCoupons DESC
LIMIT 1;


-- 10. Customer Count and Maximum App Usage by Order Category
SELECT
    PreferredOrderCat,
    COUNT(*) AS CustomerCount,
    MAX(HoursSpentOnApp) AS MaxHoursSpentOnApp
FROM customer_churn
GROUP BY PreferredOrderCat;


-- 11. Total Orders by Credit Card Customers with Maximum Satisfaction
SELECT
    SUM(OrderCount) AS TotalOrderCount
FROM customer_churn
WHERE PreferredPaymentMode = 'Credit Card'
  AND SatisfactionScore = (
      SELECT MAX(SatisfactionScore)
      FROM customer_churn
  );


-- 12. Average Satisfaction Score Among Customers Who Complained
SELECT
    AVG(SatisfactionScore) AS AverageSatisfactionScore
FROM customer_churn
WHERE ComplaintReceived = 'Yes';


-- 13. Order Categories with More Than 5 Coupons Used
SELECT
    PreferredOrderCat,
    COUNT(*) AS CustomerCount
FROM customer_churn
WHERE CouponUsed > 5
GROUP BY PreferredOrderCat
ORDER BY CustomerCount DESC;


-- 14. Top 3 Order Categories by Average Cashback
SELECT
    PreferredOrderCat,
    AVG(CashbackAmount) AS AverageCashback
FROM customer_churn
GROUP BY PreferredOrderCat
ORDER BY AverageCashback DESC
LIMIT 3;


-- 15. Customer Distribution by Warehouse-to-Home Distance and Churn Status
SELECT
    DistanceCategory,
    ChurnStatus,
    COUNT(*) AS CustomerCount
FROM customer_churn
GROUP BY DistanceCategory, ChurnStatus
ORDER BY DistanceCategory, ChurnStatus;


-- 16. Married, Tier-1 Customers with Above-Average Order Count
SELECT
    *
FROM customer_churn
WHERE MaritalStatus = 'Married'
  AND CityTier = 1
  AND OrderCount > (
      SELECT AVG(OrderCount)
      FROM customer_churn
  );


-- 17. Returned Customers Who Churned and Complained
SELECT
    r.*,
    c.*
FROM customer_returns r
JOIN customer_churn c
    ON r.CustomerID = c.CustomerID
WHERE c.ChurnStatus = 'Churned'
  AND c.ComplaintReceived = 'Yes';


-- 18. Total Customers in the Final Cleaned Dataset
SELECT
    COUNT(*) AS TotalCustomers
FROM customer_churn;

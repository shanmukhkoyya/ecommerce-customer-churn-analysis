USE ecomm;

-- ============================================================
-- E-Commerce Customer Churn Analysis
-- Business Analysis & Interview Queries
-- ============================================================
-- STEP 1:
-- Run the original Ecommerce_Customer_Churn_Analysis.sql first.
--
-- STEP 2:
-- Run these queries after the cleaned/transformed
-- customer_churn and customer_returns tables exist.
--
-- Purpose:
-- Provide a clean recruiter-friendly collection of SQL
-- business analysis and interview-focused queries.
-- ============================================================


-- ============================================================
-- SECTION 1: CORE BUSINESS ANALYSIS
-- ============================================================

-- 1. Active vs Churned Customers
SELECT
    ChurnStatus,
    COUNT(*) AS CustomerCount
FROM customer_churn
GROUP BY ChurnStatus;


-- 2. Overall Customer Churn Rate
SELECT
    ROUND(
        100.0 * SUM(ChurnStatus = 'Churned') / COUNT(*),
        2
    ) AS ChurnRatePercentage
FROM customer_churn;


-- 3. Average Tenure and Total Cashback of Churned Customers
SELECT
    AVG(Tenure) AS AverageTenure,
    SUM(CashbackAmount) AS TotalCashback
FROM customer_churn
WHERE ChurnStatus = 'Churned';


-- 4. Percentage of Churned Customers Who Complained
SELECT
    ROUND(
        100.0 * SUM(ComplaintReceived = 'Yes') / COUNT(*),
        2
    ) AS PercentageChurnedWhoComplained
FROM customer_churn
WHERE ChurnStatus = 'Churned';


-- 5. Churn Rate by Order Category
SELECT
    PreferredOrderCat,
    COUNT(*) AS CustomerCount,
    SUM(ChurnStatus = 'Churned') AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(ChurnStatus = 'Churned') / COUNT(*),
        2
    ) AS ChurnRatePercentage
FROM customer_churn
GROUP BY PreferredOrderCat
ORDER BY ChurnRatePercentage DESC;


-- 6. Churn Rate by Warehouse-to-Home Distance
SELECT
    DistanceCategory,
    COUNT(*) AS CustomerCount,
    SUM(ChurnStatus = 'Churned') AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(ChurnStatus = 'Churned') / COUNT(*),
        2
    ) AS ChurnRatePercentage
FROM customer_churn
GROUP BY DistanceCategory
ORDER BY ChurnRatePercentage DESC;


-- 7. City Tier with the Most Churned Laptop & Accessory Customers
SELECT
    CityTier,
    COUNT(*) AS CustomerCount
FROM customer_churn
WHERE ChurnStatus = 'Churned'
  AND PreferredOrderCat = 'Laptop & Accessory'
GROUP BY CityTier
ORDER BY CustomerCount DESC
LIMIT 1;


-- 8. Most Common Payment Mode Among Active Customers
SELECT
    PreferredPaymentMode,
    COUNT(*) AS CustomerCount
FROM customer_churn
WHERE ChurnStatus = 'Active'
GROUP BY PreferredPaymentMode
ORDER BY CustomerCount DESC
LIMIT 1;


-- 9. Total Order Amount Hike for Single Customers Buying Mobile Phones
SELECT
    SUM(OrderAmountHikeFromlastYear) AS TotalOrderAmountHike
FROM customer_churn
WHERE MaritalStatus = 'Single'
  AND PreferredOrderCat = 'Mobile Phone';


-- 10. Average Registered Devices Among UPI Customers
SELECT
    AVG(NumberOfDeviceRegistered) AS AverageDevices
FROM customer_churn
WHERE PreferredPaymentMode = 'UPI';


-- 11. City Tier with the Highest Number of Customers
SELECT
    CityTier,
    COUNT(*) AS CustomerCount
FROM customer_churn
GROUP BY CityTier
ORDER BY CustomerCount DESC
LIMIT 1;


-- 12. Gender with the Highest Coupon Usage
SELECT
    Gender,
    SUM(CouponUsed) AS TotalCoupons
FROM customer_churn
GROUP BY Gender
ORDER BY TotalCoupons DESC
LIMIT 1;


-- 13. Customer Count and Maximum App Usage by Order Category
SELECT
    PreferredOrderCat,
    COUNT(*) AS CustomerCount,
    MAX(HoursSpentOnApp) AS MaxHoursSpentOnApp
FROM customer_churn
GROUP BY PreferredOrderCat;


-- 14. Total Orders by Credit Card Customers with Maximum Satisfaction
SELECT
    SUM(OrderCount) AS TotalOrderCount
FROM customer_churn
WHERE PreferredPaymentMode = 'Credit Card'
  AND SatisfactionScore = (
      SELECT MAX(SatisfactionScore)
      FROM customer_churn
  );


-- 15. Average Satisfaction Score Among Customers Who Complained
SELECT
    AVG(SatisfactionScore) AS AverageSatisfactionScore
FROM customer_churn
WHERE ComplaintReceived = 'Yes';


-- 16. Order Categories with More Than 5 Coupons Used
SELECT
    PreferredOrderCat,
    COUNT(*) AS CustomerCount
FROM customer_churn
WHERE CouponUsed > 5
GROUP BY PreferredOrderCat
ORDER BY CustomerCount DESC;


-- 17. Top 3 Order Categories by Average Cashback
SELECT
    PreferredOrderCat,
    AVG(CashbackAmount) AS AverageCashback
FROM customer_churn
GROUP BY PreferredOrderCat
ORDER BY AverageCashback DESC
LIMIT 3;


-- 18. Customer Distribution by Warehouse-to-Home Distance and Churn Status
SELECT
    DistanceCategory,
    ChurnStatus,
    COUNT(*) AS CustomerCount
FROM customer_churn
GROUP BY DistanceCategory, ChurnStatus
ORDER BY DistanceCategory, ChurnStatus;


-- 19. Married, Tier-1 Customers with Above-Average Order Count
SELECT
    *
FROM customer_churn
WHERE MaritalStatus = 'Married'
  AND CityTier = 1
  AND OrderCount > (
      SELECT AVG(OrderCount)
      FROM customer_churn
  );


-- 20. Returned Customers Who Churned and Complained
SELECT
    r.*,
    c.*
FROM customer_returns r
JOIN customer_churn c
    ON r.CustomerID = c.CustomerID
WHERE c.ChurnStatus = 'Churned'
  AND c.ComplaintReceived = 'Yes';


-- 21. Total Customers in the Final Cleaned Dataset
SELECT
    COUNT(*) AS TotalCustomers
FROM customer_churn;


-- ============================================================
-- SECTION 2: INTERVIEW-FOCUSED SQL ANALYSIS
-- ============================================================

-- 22. Churn and Complaint Rate by Customer Status
SELECT
    ChurnStatus,
    COUNT(*) AS CustomerCount,
    SUM(ComplaintReceived = 'Yes') AS CustomersWhoComplained,
    ROUND(
        100.0 * SUM(ComplaintReceived = 'Yes') / COUNT(*),
        2
    ) AS ComplaintRatePercentage
FROM customer_churn
GROUP BY ChurnStatus;


-- 23. Churn Analysis by Preferred Payment Mode
SELECT
    PreferredPaymentMode,
    COUNT(*) AS CustomerCount,
    SUM(ChurnStatus = 'Churned') AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(ChurnStatus = 'Churned') / COUNT(*),
        2
    ) AS ChurnRatePercentage
FROM customer_churn
GROUP BY PreferredPaymentMode
ORDER BY ChurnRatePercentage DESC;


-- 24. Average Customer Metrics by Churn Status
SELECT
    ChurnStatus,
    ROUND(AVG(Tenure), 2) AS AverageTenure,
    ROUND(AVG(OrderCount), 2) AS AverageOrderCount,
    ROUND(AVG(CashbackAmount), 2) AS AverageCashback,
    ROUND(AVG(SatisfactionScore), 2) AS AverageSatisfactionScore
FROM customer_churn
GROUP BY ChurnStatus;


-- 25. Customer Segmentation Using CASE
SELECT
    CASE
        WHEN OrderCount >= 10 THEN 'High Order Customers'
        WHEN OrderCount >= 5 THEN 'Medium Order Customers'
        ELSE 'Low Order Customers'
    END AS CustomerSegment,
    COUNT(*) AS CustomerCount
FROM customer_churn
GROUP BY CustomerSegment
ORDER BY CustomerCount DESC;


-- 26. Top 10 Customers by Order Count
SELECT
    CustomerID,
    OrderCount,
    ChurnStatus,
    PreferredOrderCat,
    SatisfactionScore
FROM customer_churn
ORDER BY OrderCount DESC
LIMIT 10;


-- 27. Customers with Above-Average Cashback
SELECT
    CustomerID,
    CashbackAmount,
    ChurnStatus,
    PreferredOrderCat
FROM customer_churn
WHERE CashbackAmount > (
    SELECT AVG(CashbackAmount)
    FROM customer_churn
)
ORDER BY CashbackAmount DESC;


-- 28. Category-Level Customer and Satisfaction Analysis
SELECT
    PreferredOrderCat,
    COUNT(*) AS CustomerCount,
    ROUND(AVG(SatisfactionScore), 2) AS AverageSatisfaction,
    ROUND(AVG(CashbackAmount), 2) AS AverageCashback
FROM customer_churn
GROUP BY PreferredOrderCat
ORDER BY CustomerCount DESC;


-- 29. Top 3 Customers by Cashback Within Each Order Category
-- Demonstrates the MySQL window function RANK().
SELECT
    CustomerID,
    PreferredOrderCat,
    CashbackAmount,
    CustomerRank
FROM (
    SELECT
        CustomerID,
        PreferredOrderCat,
        CashbackAmount,
        RANK() OVER (
            PARTITION BY PreferredOrderCat
            ORDER BY CashbackAmount DESC
        ) AS CustomerRank
    FROM customer_churn
) ranked_customers
WHERE CustomerRank <= 3
ORDER BY PreferredOrderCat, CustomerRank;


-- 30. Return Count and Total Refund Amount
SELECT
    COUNT(*) AS TotalReturns,
    SUM(RefundAmount) AS TotalRefundAmount,
    ROUND(AVG(RefundAmount), 2) AS AverageRefundAmount
FROM customer_returns;


-- 31. Returned Customers by Churn Status
SELECT
    c.ChurnStatus,
    COUNT(*) AS ReturnedCustomers,
    SUM(r.RefundAmount) AS TotalRefundAmount
FROM customer_returns r
JOIN customer_churn c
    ON r.CustomerID = c.CustomerID
GROUP BY c.ChurnStatus;


-- ============================================================
-- SECTION 3: INTERVIEW SKILLS COVERED
-- ============================================================
-- Filtering
-- Aggregation
-- GROUP BY / HAVING
-- ORDER BY / LIMIT
-- CASE expressions
-- Subqueries
-- JOIN
-- Conditional aggregation
-- Data transformation
-- Business KPI calculation
-- Churn-rate calculation
-- Customer segmentation
-- Window functions
-- Ranking
-- Return/refund analysis
-- ============================================================

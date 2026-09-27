USE ecomm;

-- ============================================================
-- E-Commerce Customer Churn Analysis
-- Recruiter-Ready Business Analysis & Interview SQL
-- ============================================================
-- Prerequisite:
-- Run Ecommerce_Customer_Churn_Analysis.sql first.
-- This file uses the cleaned/transformed tables created there.
-- ============================================================


-- ============================================================
-- SECTION 1: CORE BUSINESS KPIs
-- ============================================================

-- 1. Customer Count by Churn Status
SELECT
    ChurnStatus,
    COUNT(*) AS CustomerCount
FROM customer_churn
GROUP BY ChurnStatus
ORDER BY CustomerCount DESC;


-- 2. Overall Customer Churn Rate
SELECT
    COUNT(*) AS TotalCustomers,
    SUM(ChurnStatus = 'Churned') AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(ChurnStatus = 'Churned') / COUNT(*),
        2
    ) AS ChurnRatePercentage
FROM customer_churn;


-- 3. Customer Metrics by Churn Status
SELECT
    ChurnStatus,
    ROUND(AVG(Tenure), 2) AS AverageTenure,
    ROUND(AVG(OrderCount), 2) AS AverageOrderCount,
    ROUND(AVG(CashbackAmount), 2) AS AverageCashback,
    ROUND(AVG(SatisfactionScore), 2) AS AverageSatisfactionScore
FROM customer_churn
GROUP BY ChurnStatus
ORDER BY ChurnStatus;


-- 4. Complaint Rate by Churn Status
SELECT
    ChurnStatus,
    COUNT(*) AS CustomerCount,
    SUM(ComplaintReceived = 'Yes') AS CustomersWhoComplained,
    ROUND(
        100.0 * SUM(ComplaintReceived = 'Yes') / COUNT(*),
        2
    ) AS ComplaintRatePercentage
FROM customer_churn
GROUP BY ChurnStatus
ORDER BY ComplaintRatePercentage DESC;


-- 5. Churn Rate by Preferred Order Category
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
ORDER BY
    CASE DistanceCategory
        WHEN 'Very Close Distance' THEN 1
        WHEN 'Close Distance' THEN 2
        WHEN 'Moderate Distance' THEN 3
        WHEN 'Far Distance' THEN 4
    END;


-- ============================================================
-- SECTION 2: CUSTOMER BEHAVIOR & EXPERIENCE
-- ============================================================

-- 7. Active Customers by Preferred Payment Mode
SELECT
    PreferredPaymentMode,
    COUNT(*) AS CustomerCount
FROM customer_churn
WHERE ChurnStatus = 'Active'
GROUP BY PreferredPaymentMode
ORDER BY CustomerCount DESC;


-- 8. Average Registered Devices for UPI Customers
SELECT
    ROUND(AVG(NumberOfDeviceRegistered), 2) AS AverageRegisteredDevices
FROM customer_churn
WHERE PreferredPaymentMode = 'UPI';


-- 9. Average Satisfaction of Customers Who Complained
SELECT
    ROUND(AVG(SatisfactionScore), 2) AS AverageSatisfactionScore
FROM customer_churn
WHERE ComplaintReceived = 'Yes';


-- 10. Coupon Usage by Gender
SELECT
    Gender,
    SUM(CouponUsed) AS TotalCouponsUsed
FROM customer_churn
GROUP BY Gender
ORDER BY TotalCouponsUsed DESC;


-- 11. Customer Count and Maximum App Usage by Order Category
SELECT
    PreferredOrderCat,
    COUNT(*) AS CustomerCount,
    MAX(HoursSpentOnApp) AS MaxHoursSpentOnApp
FROM customer_churn
GROUP BY PreferredOrderCat
ORDER BY CustomerCount DESC;


-- 12. Total Order Amount Hike for Single Customers Buying Mobile Phones
SELECT
    SUM(OrderAmountHikeFromlastYear) AS TotalOrderAmountHike
FROM customer_churn
WHERE MaritalStatus = 'Single'
  AND PreferredOrderCat = 'Mobile Phone';


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
    ROUND(AVG(CashbackAmount), 2) AS AverageCashback
FROM customer_churn
GROUP BY PreferredOrderCat
ORDER BY AverageCashback DESC
LIMIT 3;


-- ============================================================
-- SECTION 3: SEGMENTATION & ADVANCED SQL
-- ============================================================

-- 15. Customer Segmentation by Order Count
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


-- 16. Top 10 Customers by Order Count
SELECT
    CustomerID,
    OrderCount,
    ChurnStatus,
    PreferredOrderCat,
    SatisfactionScore
FROM customer_churn
ORDER BY OrderCount DESC, CustomerID
LIMIT 10;


-- 17. Customers with Above-Average Cashback
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
ORDER BY CashbackAmount DESC, CustomerID;


-- 18. Category-Level Customer, Satisfaction & Cashback Analysis
SELECT
    PreferredOrderCat,
    COUNT(*) AS CustomerCount,
    ROUND(AVG(SatisfactionScore), 2) AS AverageSatisfaction,
    ROUND(AVG(CashbackAmount), 2) AS AverageCashback
FROM customer_churn
GROUP BY PreferredOrderCat
ORDER BY CustomerCount DESC;


-- 19. Top 3 Customers by Cashback Within Each Order Category
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
ORDER BY PreferredOrderCat, CustomerRank, CustomerID;


-- 20. Married Tier-1 Customers with Above-Average Order Count
SELECT
    CustomerID,
    OrderCount,
    ChurnStatus,
    PreferredOrderCat,
    CityTier,
    MaritalStatus
FROM customer_churn
WHERE MaritalStatus = 'Married'
  AND CityTier = 1
  AND OrderCount > (
      SELECT AVG(OrderCount)
      FROM customer_churn
  )
ORDER BY OrderCount DESC, CustomerID;


-- ============================================================
-- SECTION 4: RETURNS & REFUNDS
-- ============================================================

-- 21. Return Summary
SELECT
    COUNT(*) AS TotalReturns,
    ROUND(SUM(RefundAmount), 2) AS TotalRefundAmount,
    ROUND(AVG(RefundAmount), 2) AS AverageRefundAmount
FROM customer_returns;


-- 22. Returned Customers by Churn Status
SELECT
    c.ChurnStatus,
    COUNT(*) AS ReturnedCustomers,
    ROUND(SUM(r.RefundAmount), 2) AS TotalRefundAmount,
    ROUND(AVG(r.RefundAmount), 2) AS AverageRefundAmount
FROM customer_returns r
JOIN customer_churn c
    ON r.CustomerID = c.CustomerID
GROUP BY c.ChurnStatus
ORDER BY TotalRefundAmount DESC;


-- 23. Returned Customers Who Churned and Complained
SELECT
    r.ReturnID,
    r.CustomerID,
    r.ReturnDate,
    r.RefundAmount,
    c.ChurnStatus,
    c.ComplaintReceived,
    c.PreferredOrderCat,
    c.SatisfactionScore
FROM customer_returns r
JOIN customer_churn c
    ON r.CustomerID = c.CustomerID
WHERE c.ChurnStatus = 'Churned'
  AND c.ComplaintReceived = 'Yes'
ORDER BY r.RefundAmount DESC, r.ReturnID;


-- ============================================================
-- SECTION 5: DATA QUALITY VALIDATION
-- ============================================================

-- 24. Final Customer Count
SELECT
    COUNT(*) AS FinalCustomerCount
FROM customer_churn;


-- 25. Check for Duplicate Customer IDs
SELECT
    CustomerID,
    COUNT(*) AS DuplicateCount
FROM customer_churn
GROUP BY CustomerID
HAVING COUNT(*) > 1;


-- 26. Check Remaining NULL Values in Key Analytical Fields
SELECT
    SUM(Tenure IS NULL) AS NullTenure,
    SUM(WarehouseToHome IS NULL) AS NullWarehouseToHome,
    SUM(HoursSpentOnApp IS NULL) AS NullHoursSpentOnApp,
    SUM(OrderAmountHikeFromlastYear IS NULL) AS NullOrderAmountHike,
    SUM(CouponUsed IS NULL) AS NullCouponUsed,
    SUM(OrderCount IS NULL) AS NullOrderCount,
    SUM(DaySinceLastOrder IS NULL) AS NullDaysSinceLastOrder,
    SUM(ComplaintReceived IS NULL) AS NullComplaintReceived,
    SUM(ChurnStatus IS NULL) AS NullChurnStatus,
    SUM(DistanceCategory IS NULL) AS NullDistanceCategory
FROM customer_churn;


-- 27. Check Distance Outliers Remaining After Cleaning
SELECT
    COUNT(*) AS RemainingDistanceOutliers
FROM customer_churn
WHERE WarehouseToHome > 100;


-- 28. Check Expected Churn and Complaint Labels
SELECT
    ChurnStatus,
    ComplaintReceived,
    COUNT(*) AS CustomerCount
FROM customer_churn
GROUP BY ChurnStatus, ComplaintReceived
ORDER BY ChurnStatus, ComplaintReceived;


-- ============================================================
-- SECTION 6: INTERVIEW-LEVEL SQL SKILLS
-- ============================================================
-- Aggregation & KPI calculation
-- Conditional aggregation
-- Filtering with WHERE
-- GROUP BY / HAVING
-- ORDER BY / LIMIT
-- CASE expressions
-- Subqueries
-- INNER JOIN
-- Window functions (RANK)
-- Customer segmentation
-- Data-quality validation
-- ============================================================

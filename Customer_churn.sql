SELECT * FROM churn;

-- Total Churned Customers
 

-- Churn Rate
SELECT 
	ROUND(COUNT(CASE WHEN churn ='Yes' THEN 1 END) * 100.0 / COUNT(*),2) AS churn_rate
FROM churn;

-- Churn by Contract Type
SELECT 
	contract,
	COUNT(*) AS customers,
	SUM(CASE WHEN churn='Yes' THEN 1 END) AS churned,
	ROUND(SUM(CASE WHEN churn='Yes' THEN 1 END) * 100.0 / COUNT(*),2) AS churn_rate
FROM churn
GROUP BY contract;

-- Churn by Internet Service
SELECT 
	 internet_service,
	 COUNT(*) AS customers,
	 SUM(CASE WHEN churn = 'Yes' THEN 1 END) AS churned,
	 ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 END) * 100.0 / COUNT(*),2) AS churn_rate
FROM churn
GROUP BY internet_service;

--Churn by Payment Method
SELECT 
	payment_method,
 	COUNT(*) AS customers,
	SUM(CASE WHEN churn='Yes' THEN 1 END) AS churned,
	ROUND(SUM(CASE WHEN churn='Yes' THEN 1 END) * 100.0 / COUNT(*),2) AS churn_rate
FROM churn
GROUP BY payment_method;
	
-- Monthly Average Charges
SELECT
	 churn,
	 ROUND(AVG(monthly_charges :: INT),2) as avg_monthly_charges
FROM churn
GROUP BY churn;

-- Tenure analysis
SELECT
	churn,
	ROUND(AVG(tenure),2) as avg_tenure
FROM churn
GROUP BY churn;
	 
-- Revenue by Contract Type
SELECT 
	contract,
	COUNT(*) AS customers,
	ROUND(SUM(total_charges :: INT),2) AS total_revenue
FROM churn
GROUP BY contract
ORDER BY total_revenue DESC;

-- Senior Citizen churn
SELECT
	senior_citizen,
	COUNT(*) AS customers,
	SUM(CASE WHEN churn='Yes' THEN 1 END) AS churned,
	ROUND(SUM(CASE WHEN churn='Yes' THEN 1 END) * 100.0 / COUNT(*),2) AS churn_rate
FROM churn
GROUP BY senior_citizen;

-- Customer Segmentation
SELECT
	CASE 
		WHEN tenure < 12 THEN 'New Customers'
		WHEN tenure BETWEEN 12 AND 24 THEN 'Mid Term'
		ELSE 'Loyal Customers'
	END AS customer_segment,
COUNT(*) AS customers
FROM churn
GROUP BY customer_segment;

-- Gender churn rate
SELECT 
	gender,
	SUM(CASE WHEN churn='Yes' THEN 1 END) AS churned,
	ROUND(SUM(CASE WHEN churn='Yes' THEN 1 END) * 100.0 / COUNT(*),2) AS churn_rate
FROM churn
GROUP BY gender;

-- Churn by Tech Support
SELECT
	 COUNT(*) AS customers,
	 tech_support,
	 SUM(CASE WHEN churn='Yes' THEN 1 END) AS churned,
	 ROUND(SUM(CASE WHEN churn='Yes' THEN 1 END) * 100.0 / COUNT(*),2) churn_rate
FROM churn
GROUP BY tech_support;

-- Churn by Internet Service and Contract 
SELECT 
	 internet_service,
	 contract,
	 COUNT(*) AS customers,
	 SUM(CASE WHEN churn = 'Yes' THEN 1 END) AS churned,
	 ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 END) * 100.0 / COUNT(*),2) AS churn_rate
FROM churn
GROUP BY internet_service,contract;

-- Churn Revenue Loss
SELECT 
	ROUND(SUM(total_charges :: INT),2) AS revenue_loss
FROM churn
WHERE churn = 'Yes';

-- High Value Churned Customers
SELECT
	customer_id,
	tenure,
	monthly_charges,
	total_charges
FROM churn
WHERE churn = 'Yes'
ORDER BY total_charges DESC
LIMIT 10;

-- Churn by Online Security & Backup
SELECT 	
	COUNT(*) AS customers,
	online_security,
	online_backup,
	SUM(CASE WHEN churn = 'Yes' THEN 1 END) AS churned,
	ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 END) * 100.0 / COUNT(*),2) AS churn_rate
FROM churn
GROUP BY online_security,online_backup;


	
	

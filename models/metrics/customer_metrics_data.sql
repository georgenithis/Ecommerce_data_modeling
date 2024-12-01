{{
  config(
    materialized = 'table',
    )
}}

WITH customer_metrics AS (
    SELECT 
        *
    FROM 
        E_COMMERCE_UK.DEV.stage_cleaned_customer_data
)
SELECT 
    CUSTOMER_ID,
    COUNT(DISTINCT INVOICE_NUMBER) AS NumberOfTransactions, 
    SUM(REVENUE) AS Total_Spend,                            
    AVG(REVENUE) AS Average_Transaction_Value,                  
    MAX(REVENUE) AS Max_Transaction_Value 
FROM 
    customer_metrics
GROUP BY 
    CUSTOMER_ID
ORDER BY
    Total_Spend DESC
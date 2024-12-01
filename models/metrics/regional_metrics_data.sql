{{
  config(
    materialized = 'table',
    )
}}

with regional_metrics as
    (
        select 
        *
        from
            E_COMMERCE_UK.DEV.stage_cleaned_customer_data
    )
SELECT
    COUNTRY,
    CONCAT('$ ', ROUND(SUM(REVENUE))) AS Total_Revenue,                           
    COUNT(DISTINCT INVOICE_NUMBER) AS Number_Of_Transactions, 
    CONCAT('$ ',ROUND(AVG(REVENUE))) AS Average_Transaction_Value                
FROM
    regional_metrics
GROUP BY
    COUNTRY
ORDER BY
    Total_Revenue DESC;
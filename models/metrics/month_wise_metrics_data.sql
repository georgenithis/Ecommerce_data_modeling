{{
  config(
    materialized = 'table',
    )
}}

with month_wise_metrics AS  (
    SELECT
     * 
    from
        E_COMMERCE_UK.DEV.stage_cleaned_customer_data
 
)   


SELECT
    DATE_TRUNC('MONTH', INVOICEDATECLEANED) AS Transaction_Month,
    CONCAT('$ ', ROUND(SUM(REVENUE))) AS Total_Revenue,                          
    COUNT(DISTINCT INVOICE_NUMBER) AS Number_Of_Transactions, 
    CONCAT('$ ',ROUND(AVG(REVENUE))) AS Average_Transaction_Value                
FROM
    month_wise_metrics
GROUP BY
    DATE_TRUNC('MONTH', INVOICEDATECLEANED)
order by
    DATE_TRUNC('MONTH', INVOICEDATECLEANED) desc 

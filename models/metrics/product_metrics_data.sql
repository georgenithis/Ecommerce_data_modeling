{{
  config(
    materialized = 'table',
    )
}}

with product_metrics as (
    select 
    *
    from  
        E_COMMERCE_UK.DEV.stage_cleaned_customer_data
        
)
select  
    STOCK_CODE,
    PRODUCT_DESCRIPTION,
    SUM(ORDER_QUANTITY) AS Total_Units_Sold,                 
    ROUND(SUM(REVENUE)) AS Total_Revenue,                           
    COUNT(DISTINCT INVOICE_NUMBER) AS Purchase_Count,        
    CONCAT('$ ',ROUND(AVG(REVENUE))) AS Average_Revenue_Per_Transaction
FROM 
    product_metrics
GROUP BY
    STOCK_CODE,PRODUCT_DESCRIPTION
HAVING 
    Total_Revenue > 0
ORDER BY 
    Total_Revenue DESC
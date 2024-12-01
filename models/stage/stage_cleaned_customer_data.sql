{{
  config(
    materialized = 'table',
    )
}}


with cleaned_customer_data as(
    select 
    *
    from
        E_COMMERCE_UK.DEV.raw_customer_data
)
    select
        INVOICE_NUMBER,
        STOCK_CODE,
        PRODUCT_DESCRIPTION,
        ORDER_QUANTITY,
        TO_TIMESTAMP(INVOICE_DATE || ':00', 'MM/DD/YYYY HH24:MI:SS') AS InvoiceDateCleaned,
        UNIT_PRICE,
        CUSTOMER_ID,
        COUNTRY,
        (ORDER_QUANTITY * UNIT_PRICE) as revenue
    from    
        cleaned_customer_data
    where 
        INVOICE_NUMBER IS NOT NULL 
    and
        CUSTOMER_ID is NOT NULL 
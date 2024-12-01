WITH raw_data AS (
    SELECT * FROM E_COMMERCE_UK.PUBLIC.RAW_E_COMMERCE_DATA
)
    SELECT
        INVOICENO AS INVOICE_NUMBER,
        STOCKCODE AS STOCK_CODE,
        DESCRIPTION AS PRODUCT_DESCRIPTION,
        QUANTITY AS ORDER_QUANTITY,
        INVOICEDATE AS INVOICE_DATE,
        UNITPRICE AS UNIT_PRICE,
        CUSTOMERID AS CUSTOMER_ID,
        COUNTRY
    FROM
          raw_data
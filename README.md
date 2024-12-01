# Welcome to your new dbt project!

## # E-commerce Customer Behavior Analysis 

## Project Overview

### Key Objectives:
1. **Understand Customer Behavior**:
   - Identify customer spending patterns, frequency of transactions, and preferences.
2. **Evaluate Product Performance**:
   - Highlight top-performing products and under performers based on sales metrics.
3. **Regional Sales Analysis**:
   - Assess sales performance across different countries.
4. **Build a Scalable Data Pipeline**:
   - Create a pipeline that efficiently processes raw data into business-ready outputs using modern tools like Snowflake and dbt.

## Data Pipeline Workflow

The project follows a structured approach to transform raw data into actionable insights through four distinct layers:

1. **Raw Layer**:
   - Stores the raw transactional data ingested directly from the source system without any modifications for auditability and integrity.

2. **Staging Layer**:
   - Cleans and preprocesses the raw data by handling null values, deriving new fields like `Revenue`, and standardizing formats such as `InvoiceDate`.

3. **Metrics Layer**:
   - Aggregates the staged data into meaningful metrics, such as total revenue per customer, product, or region.

4. **Final Layer**:
   - Provides business-ready, consolidated tables tailored for visualization tools like Power BI and dashboards.

---

## Expected Outcomes

By the end of this project, we will have:
- A robust data pipeline capable of incremental processing.
- Insights into customer behavior and product performance.
- Clean and organized datasets for seamless integration with visualization tools.

---

## Tools Used

- **Snowflake**: Cloud data warehouse for scalable storage and query processing.
- **dbt**: Transformational layer for modular and reusable data processing.
- **Python**: Data extraction and validation.
- **Power BI**: Visualizations and dashboards to showcase insights.

## Raw Layer

The raw layer is the foundational layer of the data pipeline. It stores the original transactional data ingested directly from the source without any transformations. This ensures data integrity and provides a single source of truth.

### Schema
- **`InvoiceNo`**: Unique identifier for each invoice.
- **`StockCode`**: Product identifier.
- **`Description`**: Product description.
- **`Quantity`**: Number of units purchased.
- **`InvoiceDate`**: Date and time of the transaction.
- **`UnitPrice`**: Price per unit of the product.
- **`CustomerID`**: Unique identifier for the customer.
- **`Country`**: Country where the transaction occurred.


### Using the starter project

Try running the following commands:
- dbt run
- dbt test

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices

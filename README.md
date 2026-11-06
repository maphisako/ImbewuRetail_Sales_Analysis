# Imbewu Retail-Sales Analysis

End-to-end retail sales analysis project developed as part of the Data Analytics Bootcamp student assessment. Formulated business hypotheses to investigate Western Cape decline in revenue yet customers were still coming through the door, used Databricks SQL to clean and transform messy datasets using CTEs and conduct SQL-based investigations, and independently used Power Query to perform data cleaning in Power BI. Developed DAX measures and interactive dashboards to explore revenue trends, store performance, and customer insights across an 18-month period.



### Dashboard Overview

The analysis covers 18 months of data, presented through four visualisations. The first three visualisations break the data into separate six-month periods to make it easier to examine sales performance over time. The fourth visualisation brings all 18 months together, providing an overall view of business performance and helping identify broader trends.

![PowerBI_dashboard](imbewuDashboard_jan-jun2024.png)

![PowerBI_dashboard](imbewuDashboard%20Jul-Dec2024.png)

![PowerBI_dashboard](imbewuDashboardjan-jun2025.png)

![PowerBI_dashboard](imbewuDashboard18months.png)

[Table of Contents](#imbewu-retail-sales-analysis)
- The problem
  
- What I built
  
- Tools & skills used
  
- The dataset
  
- Data quality issues
  
- How to run this project
  
- Project structure
  
- Data model
  
- Dashboards
  
- Key findings
  
- What I learned
  
- References
  
- About me

- Contributors

 ## The problem
 Imbewu Retail is a fictional South African retail business operating across Gauteng, Western Cape, KwaZulu-Natal and Eastern Cape. The head of sales was worried about the latest revenue report and something's off in Western Cape.Numbers were down compared to last year, but the store visit reports say foot traffic is 
roughly flat and this didn't add up. The head of sales didn't want PowerPoint slides, instead she wanted one Power BI dashboard she could actually use, plus a short written summary she could forward to the COO. 

## What I build
1. Designed a galaxy schema with two facts table and four dimensions, optimised for analytical queries and Power BI performance.

2. Performed data quality checks to identify missing values, inconsistent formatting, whitespace issues and data type inconsistencies. Applied cleaning and transformation techniques using Databricks SQL CTEs and Power Query to improve data consistency and reliability for analysis.

3. Wrote 6 analytical SQL queries covering revenue, store level performance, customer count, and discount impact.

4. Built a Power BI dashboard — segmented into 6 months periods and overview of the whole 18 months period for Western Cape — driven by a number of DAX measures.

## Tools and skills used

### Tools
- Power BI Desktop

- DAX

- Databrick

- Git and GitHub

### Skills
Dimensional modelling (galaxy schema design)

SQL — CTEs, window functions, ranking, time intelligence

DAX — time intelligence, ranking, customer cohort logic

Data validation and reconciliation

Data quality auditing and remediation

Dashboard design — KPI hierarchy, audience-led layout, colour discipline

Technical writing and documentation

## The dataset
The full dataset lives in data folder as six CSV files. It's fully synthetic — no real customer or sales data is included — but it's been generated to look and behave like a real retail dataset and for learning purposes.

3.1 Customers Table

| Column       | Description                            |
| ------------ | -------------------------------------- |
| customer_id  | Unique identifier for each customer.   |
| birth_year   | Customer's year of birth.              |
| gender       | Customer's recorded gender.            |
| first_name   | Customer's first name.                 |
| last_name    | Customer's last name.                  |
| loyalty_tier | Customer's loyalty programme category. |
| home_suburb  | Suburb where the customer lives.       |
| signup_date  | Date the customer joined the business. |

3.2 Stores Table

| Column        | Description                          |
| ------------- | ------------------------------------ |
| store_id      | Unique identifier for each store.    |
| store_name    | Name of the store.                   |
| store_manager | Manager assigned to the store.       |
| format        | Store format or type.                |
| province      | Province where the store is located. |
| city          | City where the store is located.     |
| suburb        | Suburb where the store is located.   |
| opened_date   | Date the store was opened.               |

3.3 Transactions Table

| Column           | Description                                             |
| ---------------- | ------------------------------------------------------- |
| transaction_id   | Unique identifier for each transaction.                 |
| customer_id      | Identifier of the customer who made the transaction.    |
| store_id         | Identifier of the store where the transaction occurred. |
| transaction_date | Date and time of the transaction.                       |
| payment_method   | Method used to pay for the transaction.                 |

3.4 Transaction Items Table

| Column             | Description                                     |
| ------------------ | ----------------------------------------------- |
| Item_id            | unique identifier for each transaction_item     |
| transaction_id     | Identifier linking an item to a transaction.    |
| product_id         | Identifier of the product purchased.            |
| quantity           | Number of units purchased.                      |
| unit_price_at_sale | Selling price per unit at the time of purchase. |
| discount_applied   | Discount applied to the item.                   |

3.5 Products Table

| Column       | Description                               |
| ------------ | ----------------------------------------- |
| product_id   | Unique identifier for each product.       |
| product_name | Name of the product.                      |
| category     | Product category.                         |
| Sub_category | Specific classification of the product    |
| Brand        | Brand of the product                      |
| unit_price   | Current listed selling price per unit.    |
| unit_cost    | Cost of purchasing or producing one unit. |


3.6 Promotions

|column              | Description                           |
|--------------------|---------------------------------------|
| promo_id           | Unique identifier for each promotion  |
| promo_name         | Name of the promotion                 |
| category_targeted  | category the promotion is aimed at    |
| start_date         | start_date of the promotion           |
| end_date           | end_date of the promotion             |
| discount_ptc       | discount allowed on promotions        |

Key dataset characteristics:

- 18 months of history, weighted to show realistic year-on-year growth (2022 → 2024)
  
- Strong December seasonality and softer Jan/Feb periods
  
- Groceries is the dominant category by revenue
  
- Apparels is the dominant category by unit pice

- Loyalty tier distribution skews Bronze (most customers) with a small gold elite

You can analyse the CSVs directly in Excel, Python, or any BI tool. The SQL scripts in the repository contain the data-cleaning, transformation and queries developed in Databricks SQL. The original datasets were also independently imported into Power BI, where Power Query was used to perform similar cleaning and transformation processes, followed by data modelling, DAX calculations and dashboard development.

## Data quality issues

This dataset is intentionally messy in the same ways real retail data is messy. Part of this project's value is showing how to find, document, and handle these issues before they reach a dashboard.


|          Issue              |                                                                      
| --------------------------- | 
| Unnecessary whitespace      | 
| Inconsistent capitalisation | 
| Missing values              | 
| Inconsistent data types     | 
| Missing customer IDs        | 
| Missing store managers      | 

Every issue is documented in docs/data-quality.md folder with:

- The SQL query to find it
  
- The decision on how to handle it (fix at source / fix in pipeline / flag and live with it)
  
- The downstream impact

## How to run this project

### Quick exploration (CSVs only)
If you just want to look at the data, the CSV files in data folder, open directly in Excel, Power BI, Python, or any SQL tool that supports CSV import. No database setup required.

## How to Open the Power BI Report

**Step 1 — Download the Power BI report**

1. Navigate to the project repository on GitHub.
 
2. Locate the `.pbix` file.
 
3. Click **Download** to save the file to your computer.

**Step 2 — Open the Power BI report**

1. Install and open Power BI Desktop.
 
2. Open the downloaded `.pbix` file.
 
3. Explore the interactive dashboards using the available filters and visualisations.

**Note on the `.pbix` file:** The Power BI file is a binary file and cannot be viewed directly on GitHub. Download it and open it using Power BI Desktop to explore the interactive report. The dashboard screenshots in this README provide a visual preview of the report.

## Project Structure















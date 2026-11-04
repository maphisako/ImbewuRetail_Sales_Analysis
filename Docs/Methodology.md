# METHODOLOGY
How the project was build from messy datasets to dashboard

## 1.Datasets and Business requirements
The datasets were given out by Witle Academy as part of data analytics bootcamp student assessment. The head of sales of Imbewu retail was concerned about the latest revenue report in Western Cape,the numbers were down compared to last year but store visit report shows that the business still get customers.

## 2.Data modeling-Galaxy Schema
The data contained 4 dimension tables and 2 fact tables and i chose galaxy schema because:
Integrated insights: It allows you to analyze different business domains simultaneously. For instance, you can easily write queries to see how a promotions made impacts revenue

Data integrity: Sharing dimensions prevents conflicting reporting metrics.

Flexible modeling: A galaxy schema accommodates this by allowing one fact table to store row-level transactions while the other fact table handles aggregated data

The model has: 
- 2 fact tables(fact_transactions and fact_transaction_items)
- 4 dimension tables(dim_promotions,dim_customers,dim_stores and dim_products)

## 3.Data Validation
Before visualization in Power BI, I ran:

-Row-count checks on every table

-Null checks on the data in the given tables

-Range checks on dates to be sure its 18 months(Jan 2024-Jun 2025) of data as stated

-Total revenue sanity segmented into 6 months (does it look like real retail growth?)

-checked for whitespaces and inconsistencies

## 4.Power BI modeling
in Power BI desktop:

-Loaded all 6 tables

-set up relationships matching ERD(single direction, one to many)

-Build dax measures

## 5.Dashboard design
4 Dashboard, 3 designed for 18 months that are segmented in 6 months and 1 for the overview of the whole 18 months

Design principle followed:
-KPIs at the top with the filter for the four provinces and date

- Each chart addressing a possible cause in decline in revenue in Western Cape

- consistent colour(blue,grey)

- Desktop friendly layout

## 6.What can be done differently
-Have a date table to make analysis more effecient, the data didnot have a date table, i had to extract the date from the transaction table

-Have quantity under products to be able to track the inventory volume at hand as well as the cost to have that inventory

   

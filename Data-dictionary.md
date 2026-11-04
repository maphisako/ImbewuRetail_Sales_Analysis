# Imbewu Sales Analytics – Data Dictionary

## Project Overview

This data dictionary describes the tables and fields used in the Imbewu Sales Analytics project. It provides definitions of the database columns, their purpose, and their relevance to the sales analysis.

## Database Tables

The project uses the following tables:

1. Customers – Contains customer demographic and loyalty information.
2. Stores – Contains information about store locations, formats and management.
3. Transactions – Contains transaction dates, customer references, store references and payment methods.
4. Transaction_items – individual products purchased in each transaction, including quantities, selling prices and discounts.
5. Products – product information, including product categories, unit prices and unit costs.
6. Promotions - contains information about promotions made at the certain period as well as the name given to each promotion,category-targeted and the discount allowance.

# Data Dictionary

## Customers Table

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

## Stores Table

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

## Transactions Table

| Column           | Description                                             |
| ---------------- | ------------------------------------------------------- |
| transaction_id   | Unique identifier for each transaction.                 |
| customer_id      | Identifier of the customer who made the transaction.    |
| store_id         | Identifier of the store where the transaction occurred. |
| transaction_date | Date and time of the transaction.                       |
| payment_method   | Method used to pay for the transaction.                 |

## Transaction Items Table

| Column             | Description                                     |
| ------------------ | ----------------------------------------------- |
| Item_id            | unique identifier for each transaction_item     |
| transaction_id     | Identifier linking an item to a transaction.    |
| product_id         | Identifier of the product purchased.            |
| quantity           | Number of units purchased.                      |
| unit_price_at_sale | Selling price per unit at the time of purchase. |
| discount_applied   | Discount applied to the item.                   |

## Products Table

| Column       | Description                               |
| ------------ | ----------------------------------------- |
| product_id   | Unique identifier for each product.       |
| product_name | Name of the product.                      |
| category     | Product category.                         |
| Sub_category | Specific classification of the product    |
| Brand        | Brand of the product                      |
| unit_price   | Current listed selling price per unit.    |
| unit_cost    | Cost of purchasing or producing one unit. |


## Promotions

|column              | Description                           |
|--------------------|---------------------------------------|
| promo_id           | Unique identifier for each promotion  |
| promo_name         | Name of the promotion                 |
| category_targeted  | category the promotion is aimed at    |
| start_date         | start_date of the promotion           |
| end_date           | end_date of the promotion             |
| discount_ptc       | discount allowed on promotions        |


# Data Cleaning and Standardisation

The following data cleaning techniques were applied during the investigation:

- TRIM was used to remove unnecessary spaces.
 
- INITCAP was used to standardise the capitalisation of text fields.
 
- COALESCE was used to replace missing values with appropriate labels.
 
- CAST was used to standardise customer ID data types.
 
- Missing customer IDs were labelled as 'Investigate'.
  
- Missing store managers were labelled as 'Not_allocated'.

## 5. Key Relationships

- customers.customer_id links to transactions.customer_id.
 
- stores.store_id links to transactions.store_id.
 
- transactions.transaction_id links to transaction_items.transaction_id.
 
- products.product_id links to transaction_items.product_id.
 
- products.sub_category links to promotions.category_targeted

These relationships support the analysis of sales, customers, products and store performance.


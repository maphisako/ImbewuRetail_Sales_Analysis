# DATA QUALITY NOTES

The data is synthetic but mimic the real world data quality issues as it was provided for learning purposes to be able to handle them before any analysis.

## Issues at glance

| Category              | Issues                                                                               |
| ------------          | ------------------------------------------------------------------------------------ |
| Consistency           | Unnecessary leading and trailing spaces in text columns.                             |
| Consistency           | Inconsistent capitalisation in province, city, suburb, store name and store manager. |
| Completeness          | Missing store manager values (NULL).                                                 |
| Referential Integrity | Missing customer IDs (NULL).                                                         |
| Completeness          | Missing birth year values (NULL).                                                    |
| Completeness          | Missing gender values (NULL).                                                        |

# How to find these Issues

## Finding Null values
     SELECT 
    COUNT_IF(Product_id IS NULL) AS product_id_nulls,
    COUNT_IF(product_name IS NULL) AS product_name_nulls,
    COUNT_IF(category IS NULL) AS category_nulls,
    COUNT_IF(sub_category IS NULL) AS sub_category_nulls,
    COUNT_IF(brand IS NULL) AS brand_nulls,
    COUNT_IF(unit_cost IS NULL) AS unit_cost_nulls,
    COUNT_IF(unit_price IS NULL) AS unit_price_nulls
    from products
    select*
    from products

     SELECT 
    COUNT_IF(store_id IS NULL) AS store_id_nulls,
    COUNT_IF(store_name IS NULL) AS gender_nulls,
    COUNT_IF(format IS NULL) AS format_nulls,
    COUNT_IF(province IS NULL) AS province_nulls,
    COUNT_IF(city IS NULL) AS city_nulls,
    COUNT_IF(suburb IS NULL) AS suburb_nulls,
    COUNT_IF(store_manager IS NULL) AS store_manager_nulls,
    COUNT_IF(opened_date IS NULL) AS opened_date_nulls
    FROM stores
    select*
    from stores

    SELECT 
    COUNT_IF(first_name IS NULL) AS first_name_nulls,
    COUNT_IF(gender IS NULL) AS gender_nulls,
    COUNT_IF(customer_id IS NULL) AS date_nulls,
    COUNT_IF(last_name IS NULL) AS last_name_nulls,
    COUNT_IF(birth_year IS NULL) AS birth_year_nulls,
    COUNT_IF(loyalty_tier IS NULL) AS loyalty_tier_nulls,
    COUNT_IF(home_suburb IS NULL) AS home_suburb_nulls,
    COUNT_IF(signup_date IS NULL) AS signup_date_nulls
    FROM customers
    select*
    from customers


## Finding inconsistencies

    SELECT *
    FROM customers
    WHERE first_name != TRIM(first_name)
    OR last_name != TRIM(last_name)
    OR home_suburb != TRIM(home_suburb)

    SELECT *
    FROM stores
    WHERE store_manager != TRIM(store_manager)
    OR province != TRIM(province)
    OR city != TRIM(city)
    OR suburb != TRIM(suburb)
    OR store_name != TRIM(store_name)


    SELECT DISTINCT gender
    FROM customers
    ORDER BY gender

    SELECT
    t.customer_id
    FROM transactions t
    LEFT JOIN customers c
    ON t.customer_id = c.customer_id
    WHERE c.customer_id IS NULL
    AND t.customer_id IS NOT NULL

# The fix-or-flag framework
for every table with data issues, a CTE was used to clean and store the cleaned data which was queried everytime the information was needed from that table.

## What the dashboards do
- Missing customer_ids from the transactions table that were flagged for investigation were included the count of active customers
because the sale happened, we just don't have the customer_ids to those sales.

- The store that had no store manager allocated to it was also included as it was open for business even though there was no manager name to that store.

- The tables with inconsistent data formats(casting and whitespaces) were cleaned(TRIM(),INITCAP()) before the data visualization stage.

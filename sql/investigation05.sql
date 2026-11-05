
-- AVERAGE UNIT SELLING PRICE ANALYSIS
-- Purpose: Compare revenue and average unit selling
-- prices across provinces and reporting periods.

    -- with updated_store_table as(
    -- SELECT
    -- store_id,format,opened_date,
    -- COALESCE(INITCAP(Trim(store_manager)),'Not_allocated') AS store_manager,
    -- INITCAP(trim(province)) AS province,INITCAP(trim(city)) AS city,
    --  INITCAP(trim(suburb)) AS suburb,INITCAP(trim(store_name)) AS store_name
    -- from stores),

    -- updated_transactions_table as(
    --  SELECT 
    -- COALESCE(CAST(customer_id AS STRING),'Investigate') AS customer_id,
    -- transaction_id,store_id,transaction_date,payment_method
    -- from transactions)

    -- SELECT SUM(ti.quantity*ti.unit_price_at_sale) as revenue,us.province,SUM(ti.unit_price_at_sale * ti.quantity) /
    -- NULLIF(SUM(ti.quantity), 0) AS avg_unit_price_at_sale,
    --   CASE WHEN ut.transaction_date BETWEEN '2024-01-01 00:00' AND '2024-06-30 23:59' then 'JAN-JUNE 2024'
    --    WHEN ut.transaction_date BETWEEN '2024-07-01 00:00' AND '2024-12-31 23:59' then 'JUL-DEC 2024'
    --     WHEN ut.transaction_date BETWEEN '2025-01-01 00:00' AND '2025-06-30 23:59' then 'JAN-JUN 2025'
    --    ELSE 'Other'
    --        END AS Date_bracket
    --      from updated_transactions_table ut
    --     left join updated_store_table us
    --     on ut.store_id=us.store_id
    --       left join transaction_items ti
    --       on ut.transaction_id=ti.transaction_id
    --       group by 2,4
    --       order by avg_unit_price_at_sale desc;

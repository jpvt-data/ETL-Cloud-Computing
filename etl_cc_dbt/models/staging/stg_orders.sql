-- stg_orders.sql
WITH raw_data AS (
    SELECT
        id AS order_id,
        customer_id AS customer_ref,
        ordered_at AS order_date,
        store_id AS store_ref
    FROM {{ source('source_redshift', 'raw_orders') }}
)

SELECT *
FROM raw_data

-- stg_items.sql
WITH raw_data AS (
    SELECT
        id AS item_id,
        order_id AS order_id_ref,
        sku AS product_ref
    FROM {{ source('source_redshift', 'raw_items') }}
)

SELECT *
FROM raw_data

-- stg_products.sql
WITH raw_data AS (
    SELECT
        sku AS product_id,
        name AS product_name,
        type AS product_type,
        price AS product_price,
        description AS product_description
    FROM {{ source('source_redshift', 'raw_products') }}
)

SELECT *
FROM raw_data

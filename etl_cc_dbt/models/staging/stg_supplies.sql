-- stg_supplies.sql
WITH raw_data AS (
    SELECT
        id AS supply_id,
        name AS supply_name,
        cost AS supply_cost,
        perishable AS is_perishable,
        sku AS product_ref
    FROM {{ source('source_redshift', 'raw_supplies') }}
)

SELECT *
FROM raw_data

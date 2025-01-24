-- stg_stores.sql
WITH raw_data AS (
    SELECT
        id AS store_id,
        name AS store_name,
        opened_at AS store_open_date,
        tax_rate AS store_tax_rate
    FROM {{ source('source_redshift', 'raw_stores') }}
)

SELECT *
FROM raw_data

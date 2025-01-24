-- models/staging/stg_customers.sql
WITH raw_data AS (
    SELECT
        id AS customer_id,
        name AS customer_name
    FROM {{ source('source_redshift', 'raw_customers') }}  -- Référence correcte à la source
)

SELECT *
FROM raw_data

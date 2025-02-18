SELECT *
FROM {{ ref('int_sales_margin') }}
WHERE orders_id = 1002559
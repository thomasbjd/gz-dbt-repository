SELECT
orders_id,
date_date,
ROUND(SUM (revenue),2) AS revenue,
ROUND(SUM (quantity),2) AS quantity,
ROUND(SUM (total_purchase_price),2) AS purchase_cost,
ROUND(SUM (margin),2) AS margin
FROM {{ ref('int_sales_margin') }}
WHERE orders_id IN (1002559, 1002560, 1002561)
GROUP BY orders_id, date_date
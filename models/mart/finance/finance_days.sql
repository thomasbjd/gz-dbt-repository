SELECT
    date_date,
    COUNT(orders_id) AS nb_transactions,
    ROUND(SUM(revenue),2) AS revenue,
    ROUND(AVG(revenue),2) AS average_basket,
    ROUND(SUM(margin),2) AS margin,
    ROUND(SUM(operational_margin),2) AS operational_margin
FROM {{ ref('int_orders_operational_challenge5') }}
WHERE date_date IN ("2021-09-30", "2021-09-29", "2021-09-28")
GROUP BY date_date

SELECT
    *,
    ROUND((margin + shipping_fee - logcost - ship_cost),2) AS operational_margin
FROM {{ ref('int_orders_margin_challenge5') }}
LEFT JOIN {{ ref('stg_raw__ship') }} 
    USING (orders_id)

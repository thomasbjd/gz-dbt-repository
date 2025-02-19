SELECT 
    sales.*, 
    product.purchase_price, 
    (sales.quantity * product.purchase_price) AS total_purchase_price,
    ROUND(sales.revenue - (sales.quantity * product.purchase_price), 2) AS margin
FROM {{ ref('stg_raw__sales') }} AS sales
LEFT JOIN {{ ref('stg_raw__product') }} AS product 
    ON sales.products_id = product.products_id

select
    oi.order_item_id,
    oi.order_id,
    oi.user_id,
    oi.product_id,
    oi.inventory_item_id,
    oi.order_item_status,
    oi.order_item_created_at,
    oi.shipped_at,
    oi.delivered_at,
    oi.returned_at,
    oi.sale_price,

    o.order_status,
    o.order_created_at,
    o.item_count,

    p.category,
    p.brand,
    p.product_name,
    p.department,
    p.retail_price,

    u.first_name,
    u.last_name,
    u.email,
    u.age,
    u.gender,
    u.state,
    u.city,
    u.country,
    u.traffic_source

from {{ ref('stg_thelook__order_items') }} oi
left join {{ ref('stg_thelook__orders') }} o
    on oi.order_id = o.order_id
left join {{ ref('stg_thelook__products') }} p
    on oi.product_id = p.product_id
left join {{ ref('stg_thelook__users') }} u
    on oi.user_id = u.user_id
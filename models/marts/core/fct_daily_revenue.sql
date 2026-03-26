select
    date(order_created_at) as order_date,
    traffic_source,
    count(distinct order_id) as total_orders,
    sum(sale_price) as total_revenue,
    avg(sale_price) as avg_order_value

from {{ ref('fct_order_items') }}

group by 1, 2
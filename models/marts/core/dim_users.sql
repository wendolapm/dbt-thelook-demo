select
    user_id,
    first_name,
    last_name,
    email,
    age,
    gender,
    state,
    city,
    country,
    traffic_source,
    created_at as user_created_at
from {{ ref('stg_thelook__users') }}
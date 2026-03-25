select
    id as user_id,
    first_name,
    last_name,
    email,
    age,
    gender,
    state,
    city,
    country,
    traffic_source,
    created_at
from {{ source('thelook', 'users') }}

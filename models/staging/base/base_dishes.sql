{{
    config(
        materialized='incremental',
        unique_key= 'identifier'
    )
}}

select
    identifier
    , name
    , selling_price
    , production_cost
    , type
from
    {{ source('dbt_ippon_training', 'DISHES') }}
select * from {{ ref("stg_restaurants_turnover") }} order by turnover DESC

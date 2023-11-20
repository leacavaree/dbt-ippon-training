select count(distinct IDENTIFIER) as a, count(*) as b
from {{ref('base_orders')}} having not(a = b)
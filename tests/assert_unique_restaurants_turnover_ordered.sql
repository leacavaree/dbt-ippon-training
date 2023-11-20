select count(distinct NAME) as a, count(*) as b 
from {{ref('restaurants_turnover_ordered')}} having (a != b)
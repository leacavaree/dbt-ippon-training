select restaurant_identifier, sum(case when payment_method = 'card' then amount end) as card_amount,
sum(case when payment_method = 'cheque' then amount end) as cheque_amount 
from {{ref('base_orders')}}
group by RESTAURANT_IDENTIFIER
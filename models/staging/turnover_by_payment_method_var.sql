--{%set payment_methods = ['card', 'cheque']%}
{% set payment_methods_query %}
select distinct payment_method from {{ mockable_source('dbt_ippon_training','ORDERS', 'sample_orders') }}
{% endset %}

{% if execute %}
{# Return the first column #}
{% set payment_method_list = run_query(payment_methods_query).columns[0].values() %}
{% else %}
{% set payment_method_list = [] %}
{% endif %}

select
restaurant_identifier,
{% for payment_method in payment_method_list %}
sum(case when payment_method = '{{ payment_method }}' then amount end) as {{ payment_method }}_amount,
{% endfor %}
sum(amount) as total_amount
from {{ ref('base_orders') }}
group by restaurant_identifier
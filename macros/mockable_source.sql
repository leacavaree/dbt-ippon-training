{% macro mockable_source(source_name, table_name, sample_name) %}
{%set target_name = target.name.lower()%}
 {%if target_name in ['ci', 'dev', 'default']%}
 {{ref(sample_name)}} -- ref car appel à l'objet 'seed'
 {%else %}
 {{ source(source_name,table_name) }} 
 {%endif%}

{%endmacro%}
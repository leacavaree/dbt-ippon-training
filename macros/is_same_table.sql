{%macro is_same_table(expect, table, columns)%}
{%- do dbt_utils.equality(expect, table, columns) -%}
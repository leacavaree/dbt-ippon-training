{% macro default__generate_schema_name(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    {%- set target_name = tager.name.lower() -%}

    {%- if custom_schema_name is none -%}

        {{ default_schema }}

    {%- elif taget_name == 'prod' -%}

        {{ custom_schema_name | trim }}

    {%- else -%}

        {{ default_schema }}_{{ custom_schema_name | trim }}

    {%- endif -%}


{%- endmacro %}
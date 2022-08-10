
{% set CUSTOMER_NAMES = ["Kroger", "Bwanaz", "Costco","Walmart"] %}
select 
CUSTOMER_NAME,
{% for CUSTOMER in CUSTOMER_NAMES %}
    sum(case when CUSTOMER_NAME = '{{CUSTOMER}}' then "Sales_Amount($)" end) as {{CUSTOMER_NAME}}_amount,
{% endfor %}
from "VWE"."PUBLIC"."REVIEWS"
group by 1

{% set payment_methods = ["bank_transfer", "credit_card", "gift_card"] %}
select
    order_id,
    {% for payment_method in payment_methods %}
    sum(case when payment_method = '{{payment_method}}' then amount end) as {{payment_method}}_amount,
    {% endfor %}
    sum(amount) as total_amount
from app_data.payments
group by 1

--  create or replace table totalsalesAmount as (select CUSTOMER_NAME, sum("Sales_Amount($)") as Sales_Amount
--                                    , sum(QUANTITY) as QTY from  VWE_S3.PUBLIC.WHOLESALE group by CUSTOMER_NAME); 

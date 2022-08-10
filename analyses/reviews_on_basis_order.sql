-- analysis/running_total_by_account.sql

with review as (

  select *
  from {{ ref('reviews') }}

), orders as (

  select *
  from {{ ref('orders') }}

)

select
  CUSTOMER_NAME,
  CUSTOMER_SOURCE,
  ORDER_ID,
  ORDER_DATE,
  PRODUCT_NAME,
  sum(QUANTITY) over (partition by CUSTOMER_ID order by CUSTOMER_ID rows unbounded preceding)
from orders
order by CUSTOMER_ID
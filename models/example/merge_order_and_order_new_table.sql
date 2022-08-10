{{config(materialized='view',schema='sources')}}
select
CUSTOMER_NAME,CUSTOMER_ID,PRODUCT_NAME,PRODUCT_ID,ORDER_ID,URL,YEAR,CATEGORY,QUANTITY  

from {{ source('public', 'ORDER_NEW') }}

left join {{ source('public', 'ORDER_TABLE') }} using (ORDER_ID)

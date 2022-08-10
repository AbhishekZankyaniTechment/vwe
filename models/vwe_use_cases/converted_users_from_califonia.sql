
{{config(materialized='view',schema = 'converted_user')}}
select *
from {{ ref('converted_user') }}
where STATES = 'California' and EVENTS='Christmas Celebration' and SUBSCRIPTION = 'Yes'
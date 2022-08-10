{{config(materialized='view',schema = 'converted_user')}}

select * 
from {{ref('converted_users_from_califonia')}}
where "Location_of_tasting_room"='Russian river valley'


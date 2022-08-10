{{ config(materialized='table',schema = 'converted_user') }}

select * from vwe.public.converted_user
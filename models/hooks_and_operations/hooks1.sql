{{config(materialized='table',
post_hook=[
    "create or replace table usecase5ABHI as (select * from {{this}});"
      "alter table usecase5ABHI ADD membership_plan varchar",
      "update usecase5ABHI set  membership_plan = 
case 
when TENURE_IN_MONTHS <= 12  then 'Bronze'
when TENURE_IN_MONTHS > 12 and TENURE_IN_MONTHS <= 36  then 'Silver'
when TENURE_IN_MONTHS > 36 then 'Gold'
end
"]
)}}
select * from "VWE"."PUBLIC"."PREMIUM_CUSTOMER"

 {{ config(materialized='table') }}
SELECT * FROM "VWE"."PUBLIC"."MULTI_ATTRIBUTE" WHERE INSERTION_ORDER = 'Pinot & Paella'
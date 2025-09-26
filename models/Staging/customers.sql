RAW_CUSTOMER{{ config(materialized='table') }}

WITH tb1 as(
    select
    id as cust_id,
    first_name,
    last_name
    from {{source('EM','RAW_CUSTOMER')}})
select * from tb1
with source as (
    select * from {{ source('my_dbt_db', 'raw_orders') }}
),
renamed as (
    select
        id as order_id,
        customer as order_customer,
        ordered_at as order_date,
        store_id as order_store_id
    from source
)
select * from renamed
with source as (
    select * from {{ source('Tiller', 'order_data') }}
),

renamed as (
    select
        id_order as id_order,
        id_store as id_store,
        id_table as id_table,
        id_waiter as id_waiter
    from source
)

select * from renamed
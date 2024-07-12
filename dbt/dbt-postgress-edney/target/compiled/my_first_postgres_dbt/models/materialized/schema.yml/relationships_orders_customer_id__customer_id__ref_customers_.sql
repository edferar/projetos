
    
    

with child as (
    select customer_id as from_field
    from "postgres"."public"."orders"
    where customer_id is not null
),

parent as (
    select customer_id as to_field
    from "postgres"."public"."customers"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



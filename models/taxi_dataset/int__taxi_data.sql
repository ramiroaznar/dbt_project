{{ config(materialized='view') }}

with source_data as (

    select
        date(tpep_pickup_datetime) as pickup_date,
        count(taxi_pickup_id) as total_pickups,
        sum(passenger_count) as total_passengers,
        avg(trip_distance) as avg_trip_distance
    from
        {{ ref('stg__taxi_data')}}
    group by
        1
    order by 2 desc

)

select *
from source_data


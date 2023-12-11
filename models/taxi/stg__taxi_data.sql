{{ config(materialized='table') }}

with source_data as (

    select
        GENERATE_UUID() as taxi_pickup_id,
        vendorid,
        tpep_pickup_datetime,
        tpep_dropoff_datetime,
        passenger_count,
        trip_distance,
        ratecodeid,
        store_and_fwd_flag,
        pulocationid,
        dolocationid,
        payment_type,
        fare_amount,
        extra,
        mta_tax,
        tip_amount,
        tolls_amount,
        improvement_surcharge,
        total_amount,
    from
        {{ source('taxi_dataset', 'taxi_data')}}

)

select *
from source_data

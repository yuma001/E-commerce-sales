with
source as(
  SELECT * FROM {{ source('ecom_raw_data','raw_amazon_sale_report') }}
),

renamed as (
  select
      Order_ID as order_id,
      Date as date, 
      Status as status,
      Fulfilment as fulfilment,
      Sales_Channel_ as sales_channel,
      ship_service_level,
      style,
      SKU,
      Category as category,
      Size as size,
      Courier_Status as courier_status,
      Qty as quantity,
      currency,
      Amount as amount,
      ship_city,
      ship_state,
      ship_country,
      B2B,
      fulfilled_by
  from source
)

select * from renamed

with
source as(
  SELECT * FROM {{ source('ecom_raw_data','raw_sale_report') }}
),

renamed as (
  select
      SKU_Code as SKU,
      Category,
      Size,
      Color as Colour
  from source
  where SKU_Code is not null 
    and SKU_Code <> "#REF!"
)

select * from renamed

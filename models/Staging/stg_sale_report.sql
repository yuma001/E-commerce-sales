with
source as(
  SELECT * FROM {{ source('ecom_raw_data','raw_sale_report') }}
),

renamed as (
  select
      SKU_Code as SKU,
      Category as category,
      Size as size,
      Color as colour
  from source
  where SKU_Code is not null 
    and SKU_Code <> "#REF!"
)

select * from renamed

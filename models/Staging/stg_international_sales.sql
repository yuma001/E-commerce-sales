with
source as(
  SELECT * FROM {{ source('ecom_raw_data','raw_international_sales_cleaned') }}
),

renamed as (
  select
      Date_mmddyyyy as date_mmddyyyy,
      Customer as customer,
      Style as style,
      SKU,
      Size as size,
      Rate as rate,
      Gross_AMT as gross_AMT
  from source
)

select * from renamed

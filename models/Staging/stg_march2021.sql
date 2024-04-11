with
source as(
  SELECT * FROM {{ source('ecom_raw_data','raw_PL_march_2021') }}
),

renamed as (
  select
      Sku as SKU,
      Category as category,
      CAST(TP_1 as int) as TP_1,
      CAST(TP_2 as int) as TP_2,
      CAST(MRP_Old as int) as MRP_Old,
      CAST(Final_MRP_Old as int) as Final_MRP_Old,
      CAST(Ajio_MRP as int) as Ajio_MRP,
      CAST(Amazon_MRP as int) as Amazon_MRP,
      CAST(Amazon_FBA_MRP as int) as Amazon_FBA_MRP,
      CAST(Flipkart_MRP as int) as Flipkart_MRP,
      CAST(Limeroad_MRP as int) as Limeroad_MRP,
      CAST(Myntra_MRP as int) as Myntra_MRP,
      CAST(Paytm_MRP as int) as Paytm_MRP,
      CAST(Snapdeal_MRP as int) as Snapdeal_MRP     
  from source
)

select * from renamed

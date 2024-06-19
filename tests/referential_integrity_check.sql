-- Customer id integrity check between customer and trade table
select 
    sk_customer_id 
from {{ ref('fact_trade') }} 
where sk_customer_id not in (select customer_id from {{ ref('dim_customer') }})

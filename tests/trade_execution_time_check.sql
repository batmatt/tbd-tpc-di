-- Trade execution time check
select 
    sk_trade_id, 
    create_timestamp,
    close_timestamp
from {{ ref('fact_trade') }}
where create_timestamp > close_timestamp

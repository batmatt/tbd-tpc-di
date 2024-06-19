-- Null value check for key columns
select 
    sk_trade_id, 
    sk_broker_id,
    sk_customer_id,
    sk_account_id,
    sk_security_id,
    sk_create_date,
    sk_close_date
from {{ ref('fact_trade') }} 
where sk_trade_id is null
or sk_broker_id is null
or sk_customer_id is null
or sk_account_id is null
or sk_security_id is null
or sk_create_date is null
or sk_close_date is null

CREATE MATERIALIZED VIEW IF NOT EXISTS mv3
PARTITIONED BY (sr_returned_date_sk)
AS
SELECT
	customer.c_birth_country,
	date_dim.d_week_seq,
	customer.c_last_name,
	store_returns.sr_return_amt,
	store_returns.sr_store_sk,
	store_returns.sr_net_loss,
	customer.c_customer_sk,
	customer.c_current_addr_sk,
	date_dim.d_day_name,
	date_dim.d_date,
	store.s_store_name,
	store_returns.sr_customer_sk,
	customer.c_first_name,
	customer.c_preferred_cust_flag,
	store.s_store_sk,
	customer.c_email_address,
	customer.c_customer_id,
	store.s_zip,
	date_dim.d_year,
	date_dim.d_month_seq,
	store.s_store_id,
	store.s_state,
	date_dim.d_qoy,
	store_returns.sr_returned_date_sk,
	customer.c_login,
	date_dim.d_date_sk,
	date_dim.d_moy
FROM
	date_dim,
	customer,
	store,
	store_returns
WHERE
	store_returns.sr_returned_date_sk = date_dim.d_date_sk
	AND store_returns.sr_store_sk = store.s_store_sk
	AND store_returns.sr_customer_sk = customer.c_customer_sk
	AND date_dim.d_year = 2000
	AND store.s_state = 'TN'
DISTRIBUTE BY sr_returned_date_sk;
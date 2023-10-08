CREATE MATERIALIZED VIEW IF NOT EXISTS mv2
PARTITIONED BY (sr_returned_date_sk)
AS
SELECT
	date_dim.d_week_seq,
	store_returns.sr_return_amt,
	store_returns.sr_store_sk,
	store_returns.sr_net_loss,
	date_dim.d_day_name,
	date_dim.d_date,
	store_returns.sr_customer_sk,
	store.s_store_name,
	store.s_store_sk,
	store.s_zip,
	date_dim.d_year,
	date_dim.d_month_seq,
	store.s_state,
	store.s_store_id,
	date_dim.d_qoy,
	store_returns.sr_returned_date_sk,
	date_dim.d_date_sk,
	date_dim.d_moy
FROM
	date_dim,
	store,
	store_returns
WHERE
	store_returns.sr_returned_date_sk = date_dim.d_date_sk
	AND store_returns.sr_store_sk = store.s_store_sk
	AND date_dim.d_year = 2000
	AND store.s_state = 'TN'
DISTRIBUTE BY sr_returned_date_sk;
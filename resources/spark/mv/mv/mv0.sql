CREATE MATERIALIZED VIEW IF NOT EXISTS mv0
PARTITIONED BY (sr_returned_date_sk)
AS
SELECT
	date_dim.d_year,
	date_dim.d_month_seq,
	date_dim.d_week_seq,
	store_returns.sr_return_amt,
	store_returns.sr_store_sk,
	store_returns.sr_net_loss,
	date_dim.d_qoy,
	date_dim.d_day_name,
	date_dim.d_date,
	store_returns.sr_customer_sk,
	store_returns.sr_returned_date_sk,
	date_dim.d_date_sk,
	date_dim.d_moy
FROM
	date_dim,
	store_returns
WHERE
	store_returns.sr_returned_date_sk = date_dim.d_date_sk
	AND date_dim.d_year = 2000
DISTRIBUTE BY sr_returned_date_sk;
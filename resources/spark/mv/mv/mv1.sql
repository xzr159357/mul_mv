CREATE MATERIALIZED VIEW IF NOT EXISTS mv1
AS
SELECT
	date_dim.d_year,
	store_returns.sr_customer_sk,
	store_returns.sr_store_sk,
	sum(store_returns.sr_return_amt) AS AGG0
FROM
	date_dim,
	store_returns
WHERE
	store_returns.sr_returned_date_sk = date_dim.d_date_sk
GROUP BY
	date_dim.d_year,
	store_returns.sr_customer_sk,
	store_returns.sr_store_sk;
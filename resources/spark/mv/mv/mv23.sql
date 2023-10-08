CREATE MATERIALIZED VIEW IF NOT EXISTS mv23
AS
SELECT
	date_dim.d_date,
	store.s_store_id,
	sum(store_sales.ss_ext_sales_price) AS AGG0,
	sum(store_sales.ss_net_profit) AS AGG1
FROM
	date_dim,
	store_sales,
	store
WHERE
	store_sales.ss_store_sk = store.s_store_sk
	AND	store_sales.ss_sold_date_sk = date_dim.d_date_sk
GROUP BY
	date_dim.d_date,
	store.s_store_id;
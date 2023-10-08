SELECT
	date_dim.d_week_seq,
	store_sales.ss_promo_sk,
	store_sales.ss_sold_date_sk,
	store_sales.ss_sales_price,
	store_sales.ss_ext_wholesale_cost,
	date_dim.d_day_name,
	date_dim.d_date,
	store_sales.ss_customer_sk,
	store.s_store_name,
	store.s_store_sk,
	store_sales.ss_ext_sales_price,
	store_sales.ss_item_sk,
	store_sales.ss_ext_list_price,
	store_sales.ss_store_sk,
	date_dim.d_year,
	store.s_zip,
	date_dim.d_month_seq,
	store_sales.ss_ext_discount_amt,
	store.s_store_id,
	store.s_state,
	store_sales.ss_coupon_amt,
	store_sales.ss_net_paid,
	store_sales.ss_net_profit,
	date_dim.d_qoy,
	store_sales.ss_quantity,
	store_sales.ss_list_price,
	store_sales.ss_cdemo_sk,
	date_dim.d_date_sk,
	date_dim.d_moy
FROM
	date_dim,
	store_sales,
	store
WHERE
	store_sales.ss_store_sk = store.s_store_sk
	AND store_sales.ss_sold_date_sk = date_dim.d_date_sk
	AND date_dim.d_qoy = 2
	AND date_dim.d_year = 1998
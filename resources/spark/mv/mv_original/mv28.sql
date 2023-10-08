SELECT
	web_returns.wr_returned_date_sk,
	date_dim.d_week_seq,
	store_sales.ss_customer_sk,
	date_dim.d_day_name,
	date_dim.d_date,
	web_sales.ws_ext_wholesale_cost,
	web_returns.wr_return_amt,
	store_sales.ss_item_sk,
	web_sales.ws_ext_list_price,
	store_sales.ss_ext_list_price,
	date_dim.d_year,
	store.s_store_id,
	date_dim.d_month_seq,
	store_sales.ss_coupon_amt,
	store_sales.ss_net_profit,
	web_sales.ws_web_site_sk,
	date_dim.d_qoy,
	store_sales.ss_quantity,
	store_sales.ss_list_price,
	web_site.web_site_sk,
	web_sales.ws_sold_date_sk,
	web_returns.wr_net_loss,
	store_sales.ss_sold_date_sk,
	store_sales.ss_promo_sk,
	web_sales.ws_ext_sales_price,
	web_site.web_site_id,
	web_sales.ws_ext_discount_amt,
	store_sales.ss_sales_price,
	store_sales.ss_ext_wholesale_cost,
	web_returns.wr_order_number,
	store.s_store_name,
	store.s_store_sk,
	web_sales.ws_item_sk,
	store_sales.ss_ext_sales_price,
	store_sales.ss_store_sk,
	web_sales.ws_order_number,
	store.s_zip,
	store.s_state,
	store_sales.ss_ext_discount_amt,
	web_sales.ws_bill_customer_sk,
	store_sales.ss_net_paid,
	web_sales.ws_net_profit,
	web_returns.wr_item_sk,
	store_sales.ss_cdemo_sk,
	date_dim.d_date_sk,
	date_dim.d_moy
FROM
	web_site,
	web_returns,
	web_sales,
	date_dim,
	store_sales,
	store
WHERE
	store_sales.ss_store_sk = store.s_store_sk
	AND store_sales.ss_sold_date_sk = date_dim.d_date_sk
	AND web_returns.wr_item_sk = web_sales.ws_item_sk
	AND web_returns.wr_order_number = web_sales.ws_order_number
	AND web_sales.ws_sold_date_sk = date_dim.d_date_sk
	AND web_sales.ws_web_site_sk = web_site.web_site_sk
	AND (((date_dim.d_date >= cast('1970-01-01' as date) + interval 11192 days) AND (date_dim.d_date <= cast('1970-01-01' as date) + interval 11206 days)))
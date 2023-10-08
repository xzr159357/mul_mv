CREATE MATERIALIZED VIEW IF NOT EXISTS mv25
AS
SELECT
	web_sales.ws_sold_date_sk,
	web_returns.wr_net_loss,
	web_returns.wr_returned_date_sk,
	date_dim.d_week_seq,
	web_sales.ws_ext_sales_price,
	web_sales.ws_ext_discount_amt,
	web_returns.wr_order_number,
	date_dim.d_date,
	date_dim.d_day_name,
	web_sales.ws_ext_wholesale_cost,
	web_returns.wr_return_amt,
	web_sales.ws_item_sk,
	web_sales.ws_ext_list_price,
	web_sales.ws_order_number,
	date_dim.d_year,
	date_dim.d_month_seq,
	web_sales.ws_bill_customer_sk,
	web_sales.ws_net_profit,
	web_sales.ws_web_site_sk,
	date_dim.d_qoy,
	web_returns.wr_item_sk,
	date_dim.d_date_sk,
	date_dim.d_moy
FROM
	web_sales,
	web_returns,
	date_dim
WHERE
	(((date_dim.d_date >= cast('1970-01-01' as date) + interval 11192 days) AND (date_dim.d_date <= cast('1970-01-01' as date) + interval 11206 days)))
	AND web_sales.ws_sold_date_sk = date_dim.d_date_sk
	AND web_returns.wr_order_number = web_sales.ws_order_number
	AND web_returns.wr_item_sk = web_sales.ws_item_sk;
CREATE MATERIALIZED VIEW IF NOT EXISTS mv4
PARTITIONED BY (ws_sold_date_sk)
AS
SELECT
	web_sales.ws_sold_date_sk,
	date_dim.d_week_seq,
	web_sales.ws_ext_sales_price,
	web_sales.ws_ext_discount_amt,
	date_dim.d_day_name,
	date_dim.d_date,
	web_sales.ws_ext_wholesale_cost,
	web_sales.ws_item_sk,
	web_sales.ws_ext_list_price,
	web_sales.ws_order_number,
	date_dim.d_year,
	date_dim.d_month_seq,
	web_sales.ws_bill_customer_sk,
	web_sales.ws_net_profit,
	web_sales.ws_web_site_sk,
	date_dim.d_qoy,
	date_dim.d_date_sk,
	date_dim.d_moy
FROM
	web_sales,
	date_dim
WHERE
	web_sales.ws_sold_date_sk = date_dim.d_date_sk
DISTRIBUTE BY ws_sold_date_sk;
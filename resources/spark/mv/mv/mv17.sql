CREATE MATERIALIZED VIEW IF NOT EXISTS mv17
PARTITIONED BY (ws_sold_date_sk)
AS
SELECT
	web_sales.ws_sold_date_sk,
	customer.c_birth_country,
	customer.c_last_name,
	web_sales.ws_ext_sales_price,
	customer.c_customer_sk,
	web_sales.ws_ext_discount_amt,
	customer.c_current_addr_sk,
	customer.c_first_name,
	web_sales.ws_ext_wholesale_cost,
	customer.c_preferred_cust_flag,
	web_sales.ws_item_sk,
	customer.c_email_address,
	customer.c_customer_id,
	web_sales.ws_ext_list_price,
	web_sales.ws_order_number,
	web_sales.ws_bill_customer_sk,
	web_sales.ws_net_profit,
	web_sales.ws_web_site_sk,
	customer.c_login
FROM
	web_sales,
	customer
WHERE
	customer.c_customer_sk = web_sales.ws_bill_customer_sk
DISTRIBUTE BY ws_sold_date_sk;
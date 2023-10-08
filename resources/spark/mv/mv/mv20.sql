CREATE MATERIALIZED VIEW IF NOT EXISTS mv20
AS
SELECT
	catalog_sales.cs_ext_discount_amt,
	catalog_sales.cs_ext_wholesale_cost,
	date_dim.d_week_seq,
	customer.c_last_name,
	catalog_sales.cs_bill_customer_sk,
	store_sales.ss_customer_sk,
	date_dim.d_day_name,
	date_dim.d_date,
	web_sales.ws_ext_wholesale_cost,
	store_sales.ss_item_sk,
	customer.c_email_address,
	customer.c_customer_id,
	store_sales.ss_ext_list_price,
	date_dim.d_year,
	web_sales.ws_ext_list_price,
	date_dim.d_month_seq,
	store_sales.ss_coupon_amt,
	store_sales.ss_net_profit,
	catalog_sales.cs_ext_sales_price,
	web_sales.ws_web_site_sk,
	date_dim.d_qoy,
	store_sales.ss_quantity,
	store_sales.ss_list_price,
	catalog_sales.cs_ext_list_price,
	catalog_sales.cs_catalog_page_sk,
	customer.c_login,
	web_sales.ws_sold_date_sk,
	customer.c_birth_country,
	store_sales.ss_sold_date_sk,
	store_sales.ss_promo_sk,
	catalog_sales.cs_sold_date_sk,
	web_sales.ws_ext_sales_price,
	customer.c_customer_sk,
	web_sales.ws_ext_discount_amt,
	store_sales.ss_ext_wholesale_cost,
	catalog_sales.cs_net_profit,
	customer.c_current_addr_sk,
	store_sales.ss_sales_price,
	customer.c_first_name,
	customer.c_preferred_cust_flag,
	store_sales.ss_ext_sales_price,
	web_sales.ws_item_sk,
	web_sales.ws_order_number,
	store_sales.ss_store_sk,
	store_sales.ss_ext_discount_amt,
	web_sales.ws_bill_customer_sk,
	store_sales.ss_net_paid,
	web_sales.ws_net_profit,
	store_sales.ss_cdemo_sk,
	date_dim.d_date_sk,
	date_dim.d_moy
FROM
	catalog_sales,
	customer,
	web_sales,
	date_dim,
	store_sales
WHERE
	catalog_sales.cs_sold_date_sk = date_dim.d_date_sk
	AND customer.c_customer_sk = catalog_sales.cs_bill_customer_sk
	AND store_sales.ss_sold_date_sk = date_dim.d_date_sk
	AND web_sales.ws_sold_date_sk = date_dim.d_date_sk
	AND date_dim.d_year = 2001
	AND date_dim.d_year = 2002
	AND customer.c_customer_sk = store_sales.ss_customer_sk
	AND customer.c_customer_sk = web_sales.ws_bill_customer_sk;
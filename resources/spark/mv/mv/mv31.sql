CREATE MATERIALIZED VIEW IF NOT EXISTS mv31
PARTITIONED BY (ss_sold_date_sk)
AS
SELECT
	customer_address.ca_address_sk,
	date_dim.d_week_seq,
	customer.c_last_name,
	store_sales.ss_customer_sk,
	date_dim.d_day_name,
	date_dim.d_date,
	store_sales.ss_item_sk,
	store_sales.ss_ext_list_price,
	customer.c_email_address,
	customer.c_customer_id,
	date_dim.d_year,
	customer_address.ca_zip,
	date_dim.d_month_seq,
	store_sales.ss_coupon_amt,
	store_sales.ss_net_profit,
	date_dim.d_qoy,
	store_sales.ss_quantity,
	store_sales.ss_list_price,
	customer.c_login,
	customer.c_birth_country,
	store_sales.ss_promo_sk,
	store_sales.ss_sold_date_sk,
	customer.c_customer_sk,
	store_sales.ss_sales_price,
	store_sales.ss_ext_wholesale_cost,
	customer.c_current_addr_sk,
	customer.c_first_name,
	customer.c_preferred_cust_flag,
	store_sales.ss_ext_sales_price,
	store_sales.ss_store_sk,
	store_sales.ss_ext_discount_amt,
	store_sales.ss_net_paid,
	customer_address.ca_state,
	store_sales.ss_cdemo_sk,
	date_dim.d_date_sk,
	date_dim.d_moy
FROM
	date_dim,
	customer_address,
	store_sales,
	customer
WHERE
	customer_address.ca_address_sk = customer.c_current_addr_sk
	AND customer.c_customer_sk = store_sales.ss_customer_sk
	AND date_dim.d_year = 2000
	AND date_dim.d_moy = 1
	AND store_sales.ss_sold_date_sk = date_dim.d_date_sk
DISTRIBUTE BY ss_sold_date_sk;
CREATE MATERIALIZED VIEW IF NOT EXISTS mv10
PARTITIONED BY (ss_sold_date_sk)
AS
SELECT
	customer.c_birth_country,
	store_sales.ss_promo_sk,
	store_sales.ss_sold_date_sk,
	customer.c_last_name,
	customer.c_customer_sk,
	store_sales.ss_sales_price,
	store_sales.ss_ext_wholesale_cost,
	customer.c_current_addr_sk,
	store_sales.ss_customer_sk,
	customer.c_first_name,
	customer.c_preferred_cust_flag,
	store_sales.ss_ext_sales_price,
	store_sales.ss_item_sk,
	customer.c_email_address,
	customer.c_customer_id,
	store_sales.ss_ext_list_price,
	store_sales.ss_store_sk,
	store_sales.ss_ext_discount_amt,
	store_sales.ss_coupon_amt,
	store_sales.ss_net_paid,
	store_sales.ss_net_profit,
	store_sales.ss_quantity,
	store_sales.ss_list_price,
	store_sales.ss_cdemo_sk,
	customer.c_login
FROM
	store_sales,
	customer
WHERE
	customer.c_customer_sk = store_sales.ss_customer_sk
DISTRIBUTE BY ss_sold_date_sk;
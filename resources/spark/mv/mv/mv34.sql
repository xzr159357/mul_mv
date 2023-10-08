CREATE MATERIALIZED VIEW IF NOT EXISTS mv34
PARTITIONED BY (ss_sold_date_sk)
AS
SELECT
	customer_demographics.cd_marital_status,
	customer_demographics.cd_demo_sk,
	store_sales.ss_sold_date_sk,
	store_sales.ss_promo_sk,
	store_sales.ss_sales_price,
	store_sales.ss_ext_wholesale_cost,
	store_sales.ss_customer_sk,
	store_sales.ss_ext_sales_price,
	store_sales.ss_item_sk,
	store_sales.ss_ext_list_price,
	store_sales.ss_store_sk,
	store_sales.ss_ext_discount_amt,
	store_sales.ss_coupon_amt,
	store_sales.ss_net_paid,
	customer_demographics.cd_education_status,
	store_sales.ss_net_profit,
	store_sales.ss_quantity,
	customer_demographics.cd_gender,
	store_sales.ss_list_price,
	store_sales.ss_cdemo_sk
FROM
	customer_demographics,
	store_sales
WHERE
	customer_demographics.cd_gender = 'M'
	AND customer_demographics.cd_education_status = 'College'
	AND store_sales.ss_cdemo_sk = customer_demographics.cd_demo_sk
	AND customer_demographics.cd_marital_status = 'S'
DISTRIBUTE BY ss_sold_date_sk;
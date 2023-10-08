SELECT
	customer_demographics.cd_marital_status,
	customer_demographics.cd_demo_sk,
	date_dim.d_week_seq,
	store_sales.ss_sold_date_sk,
	store_sales.ss_promo_sk,
	store_sales.ss_sales_price,
	store_sales.ss_ext_wholesale_cost,
	date_dim.d_day_name,
	date_dim.d_date,
	store_sales.ss_customer_sk,
	store_sales.ss_ext_sales_price,
	store_sales.ss_item_sk,
	store_sales.ss_ext_list_price,
	store_sales.ss_store_sk,
	date_dim.d_year,
	date_dim.d_month_seq,
	store_sales.ss_ext_discount_amt,
	store_sales.ss_coupon_amt,
	store_sales.ss_net_paid,
	customer_demographics.cd_education_status,
	store_sales.ss_net_profit,
	store_sales.ss_quantity,
	date_dim.d_qoy,
	customer_demographics.cd_gender,
	store_sales.ss_list_price,
	store_sales.ss_cdemo_sk,
	date_dim.d_date_sk,
	date_dim.d_moy
FROM
	date_dim,
	customer_demographics,
	store_sales
WHERE
	date_dim.d_year = 2000
	AND store_sales.ss_sold_date_sk = date_dim.d_date_sk
	AND customer_demographics.cd_marital_status = 'S'
	AND customer_demographics.cd_gender = 'M'
	AND customer_demographics.cd_education_status = 'College'
	AND store_sales.ss_cdemo_sk = customer_demographics.cd_demo_sk
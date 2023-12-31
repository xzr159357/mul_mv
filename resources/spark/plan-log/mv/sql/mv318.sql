SELECT
	store_sales.ss_promo_sk,
	date_dim.d_quarter_name,
	date_dim.d_day_name,
	store_sales.ss_store_sk,
	store_sales.ss_customer_sk,
	store.s_county,
	date_dim.d_qoy,
	store_sales.ss_sold_date_sk,
	household_demographics.hd_vehicle_count,
	customer.c_first_name,
	customer.c_first_sales_date_sk,
	store_sales.ss_cdemo_sk,
	customer.c_last_name,
	store.s_store_sk,
	date_dim.d_week_seq,
	date_dim.d_year,
	store_sales.ss_ext_sales_price,
	store_sales.ss_ext_tax,
	store.s_number_employees,
	store.s_store_id,
	store_sales.ss_ext_wholesale_cost,
	customer.c_current_cdemo_sk,
	store_sales.ss_ext_list_price,
	customer.c_customer_sk,
	store_sales.ss_sold_time_sk,
	customer.c_current_hdemo_sk,
	customer.c_birth_day,
	store.s_city,
	customer.c_login,
	customer.c_salutation,
	store_sales.ss_hdemo_sk,
	date_dim.d_date_sk,
	customer.c_first_shipto_date_sk,
	date_dim.d_dow,
	customer.c_birth_year,
	store.s_zip,
	customer.c_current_addr_sk,
	store_sales.ss_ext_discount_amt,
	customer.c_birth_country,
	store.s_street_type,
	store_sales.ss_item_sk,
	customer.c_birth_month,
	customer.c_customer_id,
	date_dim.d_dom,
	store.s_street_name,
	store_sales.ss_coupon_amt,
	store.s_gmt_offset,
	store_sales.ss_addr_sk,
	store.s_store_name,
	store_sales.ss_net_paid,
	household_demographics.hd_dep_count,
	household_demographics.hd_income_band_sk,
	household_demographics.hd_demo_sk,
	store.s_market_id,
	store_sales.ss_ticket_number,
	store_sales.ss_list_price,
	date_dim.d_month_seq,
	store_sales.ss_quantity,
	store.s_company_id,
	customer.c_last_review_date_sk,
	store.s_company_name,
	store.s_state,
	store.s_suite_number,
	household_demographics.hd_buy_potential,
	customer.c_email_address,
	store_sales.ss_sales_price,
	date_dim.d_moy,
	date_dim.d_date,
	store_sales.ss_net_profit,
	customer.c_preferred_cust_flag,
	store_sales.ss_wholesale_cost,
	store.s_street_number
FROM
	household_demographics,
	store,
	customer,
	date_dim,
	store_sales
WHERE
	(((store.s_number_employees >= 200) AND (store.s_number_employees <= 295)))
	AND store_sales.ss_store_sk = store.s_store_sk
	AND household_demographics.hd_dep_count = 6
	AND household_demographics.hd_vehicle_count > 2
	AND store_sales.ss_hdemo_sk = household_demographics.hd_demo_sk
	AND store_sales.ss_customer_sk = customer.c_customer_sk
	AND store_sales.ss_sold_date_sk = date_dim.d_date_sk
	AND date_dim.d_dow = 1
	AND (((date_dim.d_year = 1999) OR (date_dim.d_year = 2000) OR (date_dim.d_year = 2001)))
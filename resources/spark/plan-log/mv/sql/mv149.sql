SELECT
	catalog_sales.cs_ext_ship_cost,
	customer_address.ca_location_type,
	customer_address.ca_city,
	store_sales.ss_promo_sk,
	web_sales.ws_ship_hdemo_sk,
	date_dim.d_quarter_name,
	date_dim.d_day_name,
	customer_address.ca_state,
	customer_demographics.cd_education_status,
	store_sales.ss_store_sk,
	customer_address.ca_country,
	catalog_sales.cs_net_profit,
	catalog_sales.cs_net_paid,
	store_sales.ss_customer_sk,
	catalog_sales.cs_item_sk,
	customer_demographics.cd_dep_employed_count,
	catalog_sales.cs_list_price,
	date_dim.d_qoy,
	web_sales.ws_list_price,
	customer_address.ca_street_number,
	catalog_sales.cs_order_number,
	customer_address.ca_address_sk,
	customer_demographics.cd_demo_sk,
	store_sales.ss_sold_date_sk,
	web_sales.ws_order_number,
	web_sales.ws_web_page_sk,
	customer.c_first_name,
	customer.c_first_sales_date_sk,
	store_sales.ss_cdemo_sk,
	catalog_sales.cs_ext_wholesale_cost,
	customer_address.ca_street_name,
	customer.c_last_name,
	customer_address.ca_zip,
	customer_demographics.cd_credit_rating,
	web_sales.ws_warehouse_sk,
	date_dim.d_week_seq,
	web_sales.ws_ship_date_sk,
	date_dim.d_year,
	web_sales.ws_net_profit,
	store_sales.ss_ext_sales_price,
	customer_address.ca_county,
	web_sales.ws_sold_time_sk,
	store_sales.ss_ext_tax,
	customer_demographics.cd_purchase_estimate,
	web_sales.ws_sold_date_sk,
	store_sales.ss_ext_wholesale_cost,
	web_sales.ws_web_site_sk,
	customer.c_current_cdemo_sk,
	customer_address.ca_gmt_offset,
	customer_demographics.cd_marital_status,
	store_sales.ss_ext_list_price,
	customer.c_customer_sk,
	catalog_sales.cs_sold_date_sk,
	store_sales.ss_sold_time_sk,
	catalog_sales.cs_coupon_amt,
	customer.c_current_hdemo_sk,
	customer.c_birth_day,
	catalog_sales.cs_ship_date_sk,
	catalog_sales.cs_bill_customer_sk,
	customer.c_login,
	customer.c_salutation,
	catalog_sales.cs_ext_discount_amt,
	customer_demographics.cd_gender,
	store_sales.ss_hdemo_sk,
	web_sales.ws_ext_sales_price,
	catalog_sales.cs_bill_hdemo_sk,
	web_sales.ws_ext_discount_amt,
	date_dim.d_date_sk,
	customer.c_first_shipto_date_sk,
	date_dim.d_dow,
	customer.c_birth_year,
	customer.c_current_addr_sk,
	catalog_sales.cs_wholesale_cost,
	catalog_sales.cs_quantity,
	web_sales.ws_ship_mode_sk,
	web_sales.ws_wholesale_cost,
	web_sales.ws_ext_list_price,
	store_sales.ss_ext_discount_amt,
	customer.c_birth_country,
	catalog_sales.cs_sold_time_sk,
	store_sales.ss_item_sk,
	customer.c_birth_month,
	customer.c_customer_id,
	date_dim.d_dom,
	web_sales.ws_ship_customer_sk,
	customer_demographics.cd_dep_college_count,
	web_sales.ws_ship_addr_sk,
	web_sales.ws_ext_ship_cost,
	web_sales.ws_bill_addr_sk,
	store_sales.ss_coupon_amt,
	catalog_sales.cs_ext_sales_price,
	catalog_sales.cs_catalog_page_sk,
	store_sales.ss_addr_sk,
	catalog_sales.cs_call_center_sk,
	catalog_sales.cs_sales_price,
	catalog_sales.cs_ship_addr_sk,
	web_sales.ws_bill_customer_sk,
	catalog_sales.cs_net_paid_inc_tax,
	store_sales.ss_list_price,
	store_sales.ss_ticket_number,
	web_sales.ws_sales_price,
	date_dim.d_month_seq,
	customer_address.ca_street_type,
	store_sales.ss_quantity,
	store_sales.ss_wholesale_cost,
	web_sales.ws_ext_wholesale_cost,
	catalog_sales.cs_bill_cdemo_sk,
	customer.c_last_review_date_sk,
	catalog_sales.cs_warehouse_sk,
	web_sales.ws_item_sk,
	catalog_sales.cs_ship_customer_sk,
	web_sales.ws_net_paid,
	web_sales.ws_promo_sk,
	customer_demographics.cd_dep_count,
	catalog_sales.cs_ship_mode_sk,
	customer.c_email_address,
	customer_address.ca_suite_number,
	web_sales.ws_quantity,
	store_sales.ss_sales_price,
	date_dim.d_moy,
	catalog_sales.cs_ext_list_price,
	date_dim.d_date,
	store_sales.ss_net_profit,
	catalog_sales.cs_promo_sk,
	customer.c_preferred_cust_flag,
	catalog_sales.cs_bill_addr_sk,
	store_sales.ss_net_paid
FROM
	customer LEFT JOIN store_sales ON (customer.c_customer_sk = store_sales.ss_customer_sk)	Join web_sales
	Join customer_address
	Join customer_demographics
	Join date_dim
	Join catalog_sales
WHERE
	customer.c_current_cdemo_sk = customer_demographics.cd_demo_sk
	AND customer.c_customer_sk = web_sales.ws_bill_customer_sk
	AND customer.c_customer_sk = catalog_sales.cs_ship_customer_sk
	AND customer.c_current_addr_sk = customer_address.ca_address_sk
	AND date_dim.d_year = 2002
	AND web_sales.ws_sold_date_sk = date_dim.d_date_sk
	AND catalog_sales.cs_sold_date_sk = date_dim.d_date_sk
	AND store_sales.ss_sold_date_sk = date_dim.d_date_sk
	AND date_dim.d_qoy < 4
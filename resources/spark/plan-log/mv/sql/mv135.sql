SELECT
	date_dim.d_dow,
	customer_address.ca_location_type,
	customer_address.ca_city,
	store_sales.ss_promo_sk,
	date_dim.d_quarter_name,
	store_sales.ss_ext_discount_amt,
	date_dim.d_day_name,
	store_sales.ss_store_sk,
	customer_address.ca_state,
	customer_address.ca_country,
	store_sales.ss_item_sk,
	store_sales.ss_customer_sk,
	date_dim.d_qoy,
	customer_address.ca_street_number,
	customer_address.ca_address_sk,
	date_dim.d_dom,
	store_sales.ss_sold_date_sk,
	store_sales.ss_cdemo_sk,
	store_sales.ss_coupon_amt,
	customer_address.ca_street_name,
	store_sales.ss_addr_sk,
	customer_address.ca_zip,
	store_sales.ss_hdemo_sk,
	date_dim.d_week_seq,
	date_dim.d_year,
	store_sales.ss_ext_sales_price,
	customer_address.ca_county,
	store_sales.ss_ticket_number,
	store_sales.ss_list_price,
	date_dim.d_month_seq,
	customer_address.ca_street_type,
	store_sales.ss_quantity,
	store_sales.ss_ext_tax,
	store_sales.ss_ext_wholesale_cost,
	customer_address.ca_gmt_offset,
	store_sales.ss_ext_list_price,
	customer_address.ca_suite_number,
	store_sales.ss_sales_price,
	date_dim.d_moy,
	store_sales.ss_sold_time_sk,
	date_dim.d_date,
	store_sales.ss_net_profit,
	store_sales.ss_wholesale_cost,
	date_dim.d_date_sk,
	store_sales.ss_net_paid
FROM
	store_sales,
	customer_address,
	date_dim
WHERE
	(date_dim.d_year = 1998 OR date_dim.d_year = 2001)
	AND store_sales.ss_sold_date_sk = date_dim.d_date_sk
	AND (date_dim.d_moy = 5 OR date_dim.d_moy = 2 OR date_dim.d_moy = 9)
	AND store_sales.ss_addr_sk = customer_address.ca_address_sk
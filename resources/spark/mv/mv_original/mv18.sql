SELECT
	web_sales.ws_sold_date_sk,
	customer.c_birth_country,
	date_dim.d_week_seq,
	customer.c_last_name,
	web_sales.ws_ext_sales_price,
	customer.c_customer_sk,
	web_sales.ws_ext_discount_amt,
	customer.c_current_addr_sk,
	date_dim.d_day_name,
	date_dim.d_date,
	customer.c_first_name,
	web_sales.ws_ext_wholesale_cost,
	customer.c_preferred_cust_flag,
	web_sales.ws_item_sk,
	customer.c_email_address,
	customer.c_customer_id,
	web_sales.ws_ext_list_price,
	date_dim.d_year,
	web_sales.ws_order_number,
	date_dim.d_month_seq,
	web_sales.ws_bill_customer_sk,
	web_sales.ws_net_profit,
	web_sales.ws_web_site_sk,
	date_dim.d_qoy,
	customer.c_login,
	date_dim.d_date_sk,
	date_dim.d_moy
FROM
	web_sales,
	date_dim,
	customer
WHERE
	customer.c_customer_sk = web_sales.ws_bill_customer_sk
	AND web_sales.ws_sold_date_sk = date_dim.d_date_sk
	AND (date_dim.d_year = 2001 OR date_dim.d_year = 2002)
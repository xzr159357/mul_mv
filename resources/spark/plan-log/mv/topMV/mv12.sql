CREATE MATERIALIZED VIEW IF NOT EXISTS mv12 AS
SELECT
	customer.c_first_shipto_date_sk,
	web_sales.ws_ship_mode_sk,
	customer.c_birth_year,
	customer.c_current_addr_sk,
	web_sales.ws_ship_hdemo_sk,
	web_sales.ws_wholesale_cost,
	web_sales.ws_ext_list_price,
	customer.c_birth_country,
	web_sales.ws_list_price,
	customer.c_birth_month,
	customer.c_customer_id,
	web_sales.ws_ship_customer_sk,
	web_sales.ws_ship_addr_sk,
	web_sales.ws_order_number,
	web_sales.ws_web_page_sk,
	customer.c_first_name,
	customer.c_first_sales_date_sk,
	web_sales.ws_bill_addr_sk,
	web_sales.ws_ext_ship_cost,
	customer.c_last_name,
	web_sales.ws_warehouse_sk,
	web_sales.ws_ship_date_sk,
	web_sales.ws_bill_customer_sk,
	web_sales.ws_net_profit,
	web_sales.ws_sales_price,
	web_sales.ws_sold_time_sk,
	web_sales.ws_ext_wholesale_cost,
	customer.c_last_review_date_sk,
	web_sales.ws_item_sk,
	web_sales.ws_sold_date_sk,
	web_sales.ws_web_site_sk,
	customer.c_current_cdemo_sk,
	web_sales.ws_net_paid,
	web_sales.ws_promo_sk,
	customer.c_email_address,
	customer.c_customer_sk,
	customer.c_preferred_cust_flag,
	web_sales.ws_quantity,
	customer.c_current_hdemo_sk,
	customer.c_birth_day,
	customer.c_login,
	customer.c_salutation,
	web_sales.ws_ext_sales_price,
	web_sales.ws_ext_discount_amt
FROM
	customer,
	web_sales
WHERE
	web_sales.ws_bill_customer_sk = customer.c_customer_sk
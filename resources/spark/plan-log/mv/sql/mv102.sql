SELECT
	item.i_manufact,
	store_sales.ss_promo_sk,
	web_sales.ws_ship_hdemo_sk,
	date_dim.d_quarter_name,
	date_dim.d_day_name,
	store_sales.ss_store_sk,
	item.i_manager_id,
	store_sales.ss_customer_sk,
	date_dim.d_qoy,
	web_sales.ws_list_price,
	item.i_class_id,
	store_sales.ss_sold_date_sk,
	web_sales.ws_order_number,
	web_sales.ws_web_page_sk,
	customer.c_first_name,
	customer.c_first_sales_date_sk,
	store_sales.ss_cdemo_sk,
	customer.c_last_name,
	web_sales.ws_warehouse_sk,
	date_dim.d_week_seq,
	web_sales.ws_ship_date_sk,
	date_dim.d_year,
	item.i_item_sk,
	item.i_product_name,
	store_sales.ss_ext_sales_price,
	web_sales.ws_net_profit,
	web_sales.ws_sold_time_sk,
	item.i_wholesale_cost,
	store_sales.ss_ext_tax,
	web_sales.ws_sold_date_sk,
	store_sales.ss_ext_wholesale_cost,
	web_sales.ws_web_site_sk,
	customer.c_current_cdemo_sk,
	store_sales.ss_ext_list_price,
	customer.c_customer_sk,
	item.i_class,
	store_sales.ss_sold_time_sk,
	customer.c_current_hdemo_sk,
	customer.c_birth_day,
	customer.c_login,
	customer.c_salutation,
	item.i_category,
	web_sales.ws_ext_sales_price,
	store_sales.ss_hdemo_sk,
	web_sales.ws_ext_discount_amt,
	date_dim.d_date_sk,
	item.i_category_id,
	customer.c_first_shipto_date_sk,
	date_dim.d_dow,
	customer.c_birth_year,
	customer.c_current_addr_sk,
	web_sales.ws_ship_mode_sk,
	web_sales.ws_wholesale_cost,
	web_sales.ws_ext_list_price,
	store_sales.ss_ext_discount_amt,
	customer.c_birth_country,
	store_sales.ss_item_sk,
	customer.c_birth_month,
	customer.c_customer_id,
	date_dim.d_dom,
	web_sales.ws_ship_customer_sk,
	item.i_color,
	web_sales.ws_ship_addr_sk,
	web_sales.ws_ext_ship_cost,
	web_sales.ws_bill_addr_sk,
	item.i_size,
	store_sales.ss_coupon_amt,
	store_sales.ss_addr_sk,
	item.i_units,
	web_sales.ws_bill_customer_sk,
	item.i_brand_id,
	item.i_brand,
	store_sales.ss_list_price,
	store_sales.ss_ticket_number,
	web_sales.ws_sales_price,
	item.i_current_price,
	date_dim.d_month_seq,
	item.i_item_id,
	store_sales.ss_quantity,
	web_sales.ws_ext_wholesale_cost,
	customer.c_last_review_date_sk,
	web_sales.ws_item_sk,
	item.i_manufact_id,
	web_sales.ws_net_paid,
	web_sales.ws_promo_sk,
	customer.c_email_address,
	web_sales.ws_quantity,
	store_sales.ss_sales_price,
	date_dim.d_moy,
	item.i_item_desc,
	date_dim.d_date,
	store_sales.ss_net_profit,
	customer.c_preferred_cust_flag,
	store_sales.ss_wholesale_cost,
	store_sales.ss_net_paid
FROM
	customer,
	item,
	date_dim,
	store_sales,
	web_sales
WHERE
	web_sales.ws_bill_customer_sk = customer.c_customer_sk
	AND web_sales.ws_item_sk = item.i_item_sk
	AND date_dim.d_year = 2000
	AND (((date_dim.d_year = 2000) OR (date_dim.d_year = 2001) OR (date_dim.d_year = 2002) OR (date_dim.d_year = 2003)))
	AND store_sales.ss_sold_date_sk = date_dim.d_date_sk
	AND date_dim.d_moy = 2
	AND store_sales.ss_item_sk = item.i_item_sk
	AND store_sales.ss_customer_sk = customer.c_customer_sk
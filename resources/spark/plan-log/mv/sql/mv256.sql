SELECT
	web_sales.ws_ship_mode_sk,
	date_dim.d_dow,
	warehouse.w_state,
	web_sales.ws_ship_hdemo_sk,
	date_dim.d_quarter_name,
	ship_mode.sm_carrier,
	web_sales.ws_wholesale_cost,
	date_dim.d_day_name,
	web_sales.ws_ext_list_price,
	time_dim.t_time,
	warehouse.w_warehouse_sk,
	date_dim.d_qoy,
	warehouse.w_county,
	web_sales.ws_list_price,
	time_dim.t_time_sk,
	date_dim.d_dom,
	web_sales.ws_ship_customer_sk,
	web_sales.ws_ship_addr_sk,
	web_sales.ws_order_number,
	web_sales.ws_web_page_sk,
	web_sales.ws_bill_addr_sk,
	web_sales.ws_ext_ship_cost,
	warehouse.w_warehouse_name,
	ship_mode.sm_type,
	web_sales.ws_warehouse_sk,
	warehouse.w_city,
	date_dim.d_week_seq,
	web_sales.ws_ship_date_sk,
	date_dim.d_year,
	web_sales.ws_bill_customer_sk,
	web_sales.ws_net_profit,
	web_sales.ws_sold_time_sk,
	web_sales.ws_sales_price,
	date_dim.d_month_seq,
	web_sales.ws_ext_wholesale_cost,
	web_sales.ws_item_sk,
	web_sales.ws_sold_date_sk,
	web_sales.ws_web_site_sk,
	web_sales.ws_net_paid,
	web_sales.ws_promo_sk,
	time_dim.t_hour,
	warehouse.w_warehouse_sq_ft,
	time_dim.t_minute,
	web_sales.ws_quantity,
	date_dim.d_moy,
	time_dim.t_meal_time,
	ship_mode.sm_ship_mode_sk,
	date_dim.d_date,
	web_sales.ws_ext_sales_price,
	web_sales.ws_ext_discount_amt,
	date_dim.d_date_sk,
	warehouse.w_country
FROM
	time_dim,
	date_dim,
	warehouse,
	web_sales,
	ship_mode
WHERE
	(((time_dim.t_time >= 30838) AND (time_dim.t_time <= 59638)))
	AND web_sales.ws_sold_time_sk = time_dim.t_time_sk
	AND web_sales.ws_warehouse_sk = warehouse.w_warehouse_sk
	AND web_sales.ws_sold_date_sk = date_dim.d_date_sk
	AND web_sales.ws_ship_mode_sk = ship_mode.sm_ship_mode_sk
	AND date_dim.d_year = 2001
	AND (((ship_mode.sm_carrier = 'DHL') OR (ship_mode.sm_carrier = 'BARIAN')))
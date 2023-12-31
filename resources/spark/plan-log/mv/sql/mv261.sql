SELECT
	warehouse.w_state,
	catalog_sales.cs_ext_ship_cost,
	web_sales.ws_ship_hdemo_sk,
	date_dim.d_quarter_name,
	date_dim.d_day_name,
	catalog_sales.cs_net_profit,
	time_dim.t_time,
	catalog_sales.cs_net_paid,
	catalog_sales.cs_item_sk,
	catalog_sales.cs_list_price,
	web_sales.ws_list_price,
	warehouse.w_warehouse_sk,
	date_dim.d_qoy,
	catalog_sales.cs_order_number,
	web_sales.ws_order_number,
	web_sales.ws_web_page_sk,
	catalog_sales.cs_ext_wholesale_cost,
	web_sales.ws_warehouse_sk,
	date_dim.d_week_seq,
	web_sales.ws_ship_date_sk,
	date_dim.d_year,
	web_sales.ws_net_profit,
	web_sales.ws_sold_time_sk,
	web_sales.ws_sold_date_sk,
	web_sales.ws_web_site_sk,
	time_dim.t_hour,
	time_dim.t_minute,
	catalog_sales.cs_sold_date_sk,
	catalog_sales.cs_coupon_amt,
	catalog_sales.cs_ship_date_sk,
	catalog_sales.cs_bill_customer_sk,
	catalog_sales.cs_ext_discount_amt,
	web_sales.ws_ext_sales_price,
	web_sales.ws_ext_discount_amt,
	catalog_sales.cs_bill_hdemo_sk,
	date_dim.d_date_sk,
	date_dim.d_dow,
	web_sales.ws_ship_mode_sk,
	catalog_sales.cs_wholesale_cost,
	catalog_sales.cs_quantity,
	web_sales.ws_wholesale_cost,
	ship_mode.sm_carrier,
	web_sales.ws_ext_list_price,
	catalog_sales.cs_sold_time_sk,
	warehouse.w_county,
	time_dim.t_time_sk,
	date_dim.d_dom,
	web_sales.ws_ship_customer_sk,
	web_sales.ws_ship_addr_sk,
	web_sales.ws_ext_ship_cost,
	web_sales.ws_bill_addr_sk,
	ship_mode.sm_type,
	warehouse.w_warehouse_name,
	catalog_sales.cs_ext_sales_price,
	catalog_sales.cs_catalog_page_sk,
	catalog_sales.cs_call_center_sk,
	catalog_sales.cs_sales_price,
	catalog_sales.cs_ship_addr_sk,
	warehouse.w_city,
	web_sales.ws_bill_customer_sk,
	catalog_sales.cs_net_paid_inc_tax,
	web_sales.ws_sales_price,
	date_dim.d_month_seq,
	web_sales.ws_ext_wholesale_cost,
	catalog_sales.cs_bill_cdemo_sk,
	catalog_sales.cs_warehouse_sk,
	web_sales.ws_item_sk,
	catalog_sales.cs_ship_customer_sk,
	web_sales.ws_net_paid,
	web_sales.ws_promo_sk,
	catalog_sales.cs_ship_mode_sk,
	warehouse.w_warehouse_sq_ft,
	web_sales.ws_quantity,
	date_dim.d_moy,
	catalog_sales.cs_ext_list_price,
	time_dim.t_meal_time,
	ship_mode.sm_ship_mode_sk,
	date_dim.d_date,
	catalog_sales.cs_promo_sk,
	catalog_sales.cs_bill_addr_sk,
	warehouse.w_country
FROM
	time_dim,
	date_dim,
	catalog_sales,
	warehouse,
	web_sales,
	ship_mode
WHERE
	web_sales.ws_warehouse_sk = warehouse.w_warehouse_sk
	AND web_sales.ws_sold_time_sk = time_dim.t_time_sk
	AND web_sales.ws_ship_mode_sk = ship_mode.sm_ship_mode_sk
	AND web_sales.ws_sold_date_sk = date_dim.d_date_sk
	AND catalog_sales.cs_warehouse_sk = warehouse.w_warehouse_sk
	AND catalog_sales.cs_sold_time_sk = time_dim.t_time_sk
	AND catalog_sales.cs_ship_mode_sk = ship_mode.sm_ship_mode_sk
	AND catalog_sales.cs_sold_date_sk = date_dim.d_date_sk
	AND (((time_dim.t_time >= 30838) AND (time_dim.t_time <= 59638)))
	AND (((ship_mode.sm_carrier = 'DHL') OR (ship_mode.sm_carrier = 'BARIAN')))
	AND date_dim.d_year = 2001
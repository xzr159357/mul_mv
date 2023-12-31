SELECT
	web_sales.ws_ship_mode_sk,
	warehouse.w_state,
	web_site.web_site_id,
	web_sales.ws_ship_hdemo_sk,
	web_sales.ws_wholesale_cost,
	web_sales.ws_ext_list_price,
	ship_mode.sm_carrier,
	web_site.web_name,
	warehouse.w_warehouse_sk,
	web_sales.ws_list_price,
	warehouse.w_county,
	web_sales.ws_ship_customer_sk,
	web_site.web_company_name,
	web_sales.ws_ship_addr_sk,
	web_sales.ws_order_number,
	web_sales.ws_web_page_sk,
	ship_mode.sm_type,
	web_sales.ws_bill_addr_sk,
	warehouse.w_warehouse_name,
	web_sales.ws_ext_ship_cost,
	web_sales.ws_warehouse_sk,
	warehouse.w_city,
	web_sales.ws_ship_date_sk,
	web_sales.ws_bill_customer_sk,
	web_sales.ws_net_profit,
	web_sales.ws_sales_price,
	web_sales.ws_sold_time_sk,
	web_sales.ws_ext_wholesale_cost,
	web_site.web_site_sk,
	web_sales.ws_item_sk,
	web_sales.ws_sold_date_sk,
	web_sales.ws_web_site_sk,
	web_sales.ws_net_paid,
	web_sales.ws_promo_sk,
	warehouse.w_warehouse_sq_ft,
	web_sales.ws_quantity,
	ship_mode.sm_ship_mode_sk,
	web_sales.ws_ext_sales_price,
	web_sales.ws_ext_discount_amt,
	warehouse.w_country
FROM
	web_site,
	web_sales,
	ship_mode,
	warehouse
WHERE
	web_sales.ws_warehouse_sk = warehouse.w_warehouse_sk
	AND web_sales.ws_ship_mode_sk = ship_mode.sm_ship_mode_sk
	AND web_sales.ws_web_site_sk = web_site.web_site_sk
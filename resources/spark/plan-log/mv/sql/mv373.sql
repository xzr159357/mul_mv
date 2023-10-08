SELECT
	web_sales.ws_ship_mode_sk,
	date_dim.d_dow,
	customer_address.ca_location_type,
	customer_address.ca_city,
	web_sales.ws_ship_hdemo_sk,
	web_sales.ws_wholesale_cost,
	web_sales.ws_ext_list_price,
	date_dim.d_quarter_name,
	web_returns.wr_item_sk,
	customer_address.ca_state,
	date_dim.d_day_name,
	web_returns.wr_order_number,
	customer_address.ca_country,
	date_dim.d_qoy,
	web_returns.wr_returned_date_sk,
	web_sales.ws_list_price,
	customer_address.ca_street_number,
	customer_address.ca_address_sk,
	date_dim.d_dom,
	web_returns.wr_net_loss,
	web_returns.wr_refunded_cash,
	web_sales.ws_ship_customer_sk,
	web_returns.wr_web_page_sk,
	web_returns.wr_refunded_addr_sk,
	web_sales.ws_ship_addr_sk,
	web_returns.wr_return_amt,
	web_sales.ws_order_number,
	web_sales.ws_ext_ship_cost,
	web_returns.wr_returning_cdemo_sk,
	web_sales.ws_web_page_sk,
	web_sales.ws_bill_addr_sk,
	customer_address.ca_street_name,
	customer_address.ca_zip,
	web_sales.ws_warehouse_sk,
	web_returns.wr_returning_addr_sk,
	date_dim.d_week_seq,
	web_sales.ws_ship_date_sk,
	web_returns.wr_refunded_cdemo_sk,
	web_sales.ws_bill_customer_sk,
	date_dim.d_year,
	web_sales.ws_net_profit,
	customer_address.ca_county,
	web_sales.ws_sales_price,
	web_returns.wr_fee,
	web_sales.ws_sold_time_sk,
	date_dim.d_month_seq,
	customer_address.ca_street_type,
	web_sales.ws_ext_wholesale_cost,
	web_returns.wr_returning_customer_sk,
	web_sales.ws_item_sk,
	web_sales.ws_sold_date_sk,
	web_sales.ws_web_site_sk,
	customer_address.ca_gmt_offset,
	web_sales.ws_net_paid,
	web_sales.ws_promo_sk,
	web_returns.wr_return_quantity,
	customer_address.ca_suite_number,
	web_sales.ws_quantity,
	date_dim.d_moy,
	date_dim.d_date,
	web_sales.ws_ext_sales_price,
	web_sales.ws_ext_discount_amt,
	web_returns.wr_reason_sk,
	date_dim.d_date_sk
FROM
	web_sales LEFT JOIN web_returns ON (web_sales.ws_order_number = web_returns.wr_order_number)	Join customer_address
	Join date_dim
WHERE
	customer_address.ca_state = 'IL'
	AND web_sales.ws_ship_addr_sk = customer_address.ca_address_sk
	AND (((date_dim.d_date >= cast('1970-01-01' as date) + interval 10623 days) AND (date_dim.d_date <= cast('1970-01-01' as date) + interval 10683 days)))
	AND web_sales.ws_ship_date_sk = date_dim.d_date_sk
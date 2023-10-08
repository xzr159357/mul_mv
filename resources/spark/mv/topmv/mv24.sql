CREATE MATERIALIZED VIEW IF NOT EXISTS mv24
AS
SELECT
	web_sales.ws_sold_date_sk,
	web_returns.wr_net_loss,
	web_returns.wr_returned_date_sk,
	web_sales.ws_ext_sales_price,
	web_sales.ws_ext_discount_amt,
	web_returns.wr_order_number,
	web_sales.ws_ext_wholesale_cost,
	web_returns.wr_return_amt,
	web_sales.ws_item_sk,
	web_sales.ws_ext_list_price,
	web_sales.ws_order_number,
	web_sales.ws_bill_customer_sk,
	web_sales.ws_net_profit,
	web_sales.ws_web_site_sk,
	web_returns.wr_item_sk
FROM
	web_sales,
	web_returns
WHERE
	web_returns.wr_order_number = web_sales.ws_order_number
	AND web_returns.wr_item_sk = web_sales.ws_item_sk;
CREATE MATERIALIZED VIEW IF NOT EXISTS mv27
AS
SELECT
	web_site.web_site_id,
	date_dim.d_date,
	sum(web_sales.ws_ext_sales_price) AS AGG0,
	sum(web_sales.ws_net_profit) AS AGG1
FROM
	web_site,
	web_sales,
	web_returns,
	date_dim
WHERE
	web_returns.wr_order_number = web_sales.ws_order_number
	AND	web_returns.wr_item_sk = web_sales.ws_item_sk
	AND	web_sales.ws_web_site_sk = web_site.web_site_sk
	AND	web_sales.ws_sold_date_sk = date_dim.d_date_sk
GROUP BY
	web_site.web_site_id,
	date_dim.d_date;
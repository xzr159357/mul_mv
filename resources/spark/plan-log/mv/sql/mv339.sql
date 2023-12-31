SELECT
	date_dim.d_dow,
	item.i_manufact,
	date_dim.d_quarter_name,
	web_returns.wr_item_sk,
	date_dim.d_day_name,
	web_returns.wr_order_number,
	item.i_manager_id,
	date_dim.d_qoy,
	web_returns.wr_returned_date_sk,
	item.i_class_id,
	date_dim.d_dom,
	web_returns.wr_refunded_cash,
	web_returns.wr_net_loss,
	item.i_color,
	web_returns.wr_web_page_sk,
	web_returns.wr_refunded_addr_sk,
	web_returns.wr_return_amt,
	web_returns.wr_returning_cdemo_sk,
	item.i_size,
	item.i_units,
	web_returns.wr_returning_addr_sk,
	date_dim.d_week_seq,
	web_returns.wr_refunded_cdemo_sk,
	date_dim.d_year,
	item.i_item_sk,
	item.i_brand_id,
	item.i_product_name,
	item.i_brand,
	web_returns.wr_fee,
	item.i_current_price,
	date_dim.d_month_seq,
	item.i_wholesale_cost,
	item.i_item_id,
	web_returns.wr_returning_customer_sk,
	item.i_manufact_id,
	web_returns.wr_return_quantity,
	item.i_item_desc,
	item.i_class,
	date_dim.d_moy,
	date_dim.d_date,
	item.i_category,
	web_returns.wr_reason_sk,
	date_dim.d_date_sk,
	item.i_category_id
FROM
	web_returns,
	item,
	date_dim
WHERE
	web_returns.wr_returned_date_sk = date_dim.d_date_sk
	AND web_returns.wr_item_sk = item.i_item_sk
	AND (((cast(date_dim.d_date as string) = '2000-06-30') OR (cast(date_dim.d_date as string) = '2000-09-27') OR (cast(date_dim.d_date as string) = '2000-11-17')))
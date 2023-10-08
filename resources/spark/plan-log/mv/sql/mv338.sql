SELECT
	item.i_product_name,
	item.i_category_id,
	item.i_brand,
	item.i_manufact,
	web_returns.wr_fee,
	item.i_current_price,
	web_returns.wr_item_sk,
	item.i_wholesale_cost,
	item.i_item_id,
	web_returns.wr_order_number,
	item.i_manager_id,
	web_returns.wr_returning_customer_sk,
	web_returns.wr_returned_date_sk,
	item.i_class_id,
	item.i_manufact_id,
	web_returns.wr_net_loss,
	web_returns.wr_refunded_cash,
	item.i_color,
	web_returns.wr_web_page_sk,
	web_returns.wr_refunded_addr_sk,
	web_returns.wr_return_amt,
	web_returns.wr_return_quantity,
	web_returns.wr_returning_cdemo_sk,
	item.i_size,
	item.i_item_desc,
	item.i_class,
	item.i_units,
	item.i_category,
	web_returns.wr_returning_addr_sk,
	web_returns.wr_refunded_cdemo_sk,
	web_returns.wr_reason_sk,
	item.i_item_sk,
	item.i_brand_id
FROM
	web_returns,
	item
WHERE
	web_returns.wr_item_sk = item.i_item_sk
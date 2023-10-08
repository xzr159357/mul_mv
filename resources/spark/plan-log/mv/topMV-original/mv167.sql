SELECT
	warehouse.w_state,
	item.i_manufact,
	catalog_sales.cs_ext_ship_cost,
	date_dim.d_quarter_name,
	date_dim.d_day_name,
	catalog_sales.cs_net_profit,
	item.i_manager_id,
	catalog_sales.cs_net_paid,
	catalog_sales.cs_item_sk,
	warehouse.w_warehouse_sk,
	catalog_returns.cr_returned_date_sk,
	item.i_class_id,
	date_dim.d_qoy,
	catalog_sales.cs_list_price,
	catalog_sales.cs_order_number,
	catalog_returns.cr_call_center_sk,
	catalog_sales.cs_ext_wholesale_cost,
	catalog_returns.cr_returning_addr_sk,
	date_dim.d_week_seq,
	date_dim.d_year,
	item.i_item_sk,
	item.i_product_name,
	catalog_returns.cr_return_amount,
	item.i_wholesale_cost,
	catalog_returns.cr_item_sk,
	catalog_returns.cr_refunded_cash,
	catalog_returns.cr_return_quantity,
	catalog_sales.cs_sold_date_sk,
	item.i_class,
	catalog_sales.cs_coupon_amt,
	catalog_sales.cs_ship_date_sk,
	catalog_sales.cs_bill_customer_sk,
	item.i_category,
	catalog_sales.cs_ext_discount_amt,
	catalog_sales.cs_bill_hdemo_sk,
	date_dim.d_date_sk,
	item.i_category_id,
	date_dim.d_dow,
	catalog_sales.cs_wholesale_cost,
	catalog_sales.cs_quantity,
	catalog_sales.cs_sold_time_sk,
	warehouse.w_county,
	date_dim.d_dom,
	item.i_color,
	catalog_returns.cr_order_number,
	catalog_returns.cr_return_amt_inc_tax,
	item.i_size,
	warehouse.w_warehouse_name,
	catalog_sales.cs_ext_sales_price,
	catalog_sales.cs_catalog_page_sk,
	item.i_units,
	catalog_sales.cs_call_center_sk,
	catalog_sales.cs_sales_price,
	catalog_sales.cs_ship_addr_sk,
	warehouse.w_city,
	catalog_returns.cr_store_credit,
	item.i_brand_id,
	catalog_sales.cs_net_paid_inc_tax,
	catalog_returns.cr_returning_customer_sk,
	item.i_brand,
	item.i_current_price,
	date_dim.d_month_seq,
	item.i_item_id,
	catalog_sales.cs_bill_cdemo_sk,
	catalog_sales.cs_warehouse_sk,
	catalog_sales.cs_ship_customer_sk,
	item.i_manufact_id,
	catalog_sales.cs_ship_mode_sk,
	warehouse.w_warehouse_sq_ft,
	catalog_returns.cr_net_loss,
	item.i_item_desc,
	date_dim.d_moy,
	catalog_sales.cs_ext_list_price,
	date_dim.d_date,
	catalog_sales.cs_promo_sk,
	catalog_returns.cr_catalog_page_sk,
	catalog_sales.cs_bill_addr_sk,
	catalog_returns.cr_reversed_charge,
	warehouse.w_country
FROM
	catalog_sales LEFT JOIN catalog_returns ON (catalog_sales.cs_item_sk = catalog_returns.cr_item_sk AND catalog_sales.cs_order_number = catalog_returns.cr_order_number)	Join item
	Join date_dim
	Join warehouse
WHERE
	(((date_dim.d_date >= cast('1970-01-01' as date) + interval 10997 days) AND (date_dim.d_date <= cast('1970-01-01' as date) + interval 11057 days)))
	AND catalog_sales.cs_sold_date_sk = date_dim.d_date_sk
	AND catalog_sales.cs_item_sk = item.i_item_sk
	AND catalog_sales.cs_warehouse_sk = warehouse.w_warehouse_sk
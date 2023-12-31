CREATE MATERIALIZED VIEW IF NOT EXISTS mv385 AS
SELECT
	date_dim.d_dow,
	item.i_manufact,
	store_sales.ss_promo_sk,
	date_dim.d_quarter_name,
	store_sales.ss_ext_discount_amt,
	date_dim.d_day_name,
	store_sales.ss_store_sk,
	item.i_manager_id,
	store_sales.ss_item_sk,
	store_sales.ss_customer_sk,
	date_dim.d_qoy,
	item.i_class_id,
	date_dim.d_dom,
	item.i_color,
	store_sales.ss_sold_date_sk,
	store_sales.ss_cdemo_sk,
	store_sales.ss_coupon_amt,
	item.i_size,
	store_sales.ss_addr_sk,
	item.i_units,
	store_sales.ss_hdemo_sk,
	store_sales.ss_net_paid,
	date_dim.d_week_seq,
	date_dim.d_year,
	item.i_item_sk,
	item.i_brand_id,
	item.i_product_name,
	store_sales.ss_ext_sales_price,
	item.i_brand,
	store_sales.ss_list_price,
	store_sales.ss_ticket_number,
	item.i_current_price,
	date_dim.d_month_seq,
	item.i_wholesale_cost,
	item.i_item_id,
	store_sales.ss_quantity,
	store_sales.ss_ext_tax,
	store_sales.ss_ext_wholesale_cost,
	item.i_manufact_id,
	store_sales.ss_ext_list_price,
	store_sales.ss_sales_price,
	item.i_class,
	item.i_item_desc,
	store_sales.ss_sold_time_sk,
	date_dim.d_moy,
	date_dim.d_date,
	item.i_category,
	store_sales.ss_net_profit,
	store_sales.ss_wholesale_cost,
	date_dim.d_date_sk,
	item.i_category_id
FROM
	store_sales,
	item,
	date_dim
WHERE
	(((date_dim.d_date >= cast('1970-01-01' as date) + interval 10644 days) AND (date_dim.d_date <= cast('1970-01-01' as date) + interval 10674 days)))
	AND store_sales.ss_sold_date_sk = date_dim.d_date_sk
	AND store_sales.ss_item_sk = item.i_item_sk
	AND (((item.i_category = 'Sports') OR (item.i_category = 'Books') OR (item.i_category = 'Home')))
SELECT
	date_dim.d_dow,
	item.i_manufact,
	item.i_category_id,
	store.s_zip,
	store_sales.ss_promo_sk,
	date_dim.d_quarter_name,
	store_sales.ss_ext_discount_amt,
	date_dim.d_day_name,
	store_sales.ss_store_sk,
	store.s_street_type,
	item.i_manager_id,
	store_sales.ss_item_sk,
	store_sales.ss_customer_sk,
	date_dim.d_qoy,
	item.i_class_id,
	store.s_county,
	date_dim.d_dom,
	item.i_color,
	store_sales.ss_sold_date_sk,
	store.s_street_name,
	store_sales.ss_cdemo_sk,
	store_sales.ss_coupon_amt,
	item.i_size,
	store.s_gmt_offset,
	store_sales.ss_addr_sk,
	item.i_units,
	store.s_store_name,
	store.s_store_sk,
	date_dim.d_week_seq,
	date_dim.d_year,
	item.i_item_sk,
	item.i_brand_id,
	item.i_product_name,
	store_sales.ss_ext_sales_price,
	item.i_brand,
	store_sales.ss_list_price,
	store_sales.ss_ticket_number,
	store.s_market_id,
	item.i_current_price,
	date_dim.d_month_seq,
	item.i_wholesale_cost,
	item.i_item_id,
	store_sales.ss_quantity,
	store_sales.ss_ext_tax,
	store_sales.ss_wholesale_cost,
	store.s_number_employees,
	store.s_company_id,
	store.s_store_id,
	store.s_company_name,
	store.s_state,
	store_sales.ss_ext_wholesale_cost,
	item.i_manufact_id,
	store.s_suite_number,
	store_sales.ss_ext_list_price,
	store_sales.ss_sales_price,
	date_dim.d_moy,
	store_sales.ss_sold_time_sk,
	item.i_item_desc,
	item.i_class,
	date_dim.d_date,
	item.i_category,
	store_sales.ss_net_profit,
	store.s_city,
	store.s_street_number,
	store_sales.ss_hdemo_sk,
	date_dim.d_date_sk,
	store_sales.ss_net_paid
FROM
	store_sales,
	item,
	date_dim,
	store
WHERE
	(((date_dim.d_moy = 12) OR (date_dim.d_moy = 1)))
	AND store_sales.ss_sold_date_sk = date_dim.d_date_sk
	AND (((date_dim.d_year = 1999) OR (date_dim.d_year = 1998) OR (date_dim.d_year = 2000)))
	AND item.i_item_sk = store_sales.ss_item_sk
	AND store_sales.ss_store_sk = store.s_store_sk
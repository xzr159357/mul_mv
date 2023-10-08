SELECT
	item.i_manufact,
	catalog_sales.cs_ext_ship_cost,
	store_sales.ss_promo_sk,
	date_dim.d_quarter_name,
	date_dim.d_day_name,
	store_sales.ss_store_sk,
	catalog_sales.cs_bill_addr_sk,
	catalog_sales.cs_net_profit,
	item.i_manager_id,
	catalog_sales.cs_net_paid,
	store_sales.ss_customer_sk,
	catalog_sales.cs_item_sk,
	catalog_sales.cs_list_price,
	item.i_class_id,
	date_dim.d_qoy,
	catalog_sales.cs_order_number,
	store_sales.ss_sold_date_sk,
	customer.c_first_name,
	customer.c_first_sales_date_sk,
	store_sales.ss_cdemo_sk,
	catalog_sales.cs_ext_wholesale_cost,
	customer.c_last_name,
	date_dim.d_week_seq,
	date_dim.d_year,
	item.i_item_sk,
	item.i_product_name,
	store_sales.ss_ext_sales_price,
	item.i_wholesale_cost,
	store_sales.ss_ext_tax,
	store_sales.ss_ext_wholesale_cost,
	customer.c_current_cdemo_sk,
	store_sales.ss_ext_list_price,
	customer.c_customer_sk,
	catalog_sales.cs_sold_date_sk,
	item.i_class,
	store_sales.ss_sold_time_sk,
	customer.c_current_hdemo_sk,
	catalog_sales.cs_bill_customer_sk,
	customer.c_birth_day,
	catalog_sales.cs_coupon_amt,
	customer.c_login,
	customer.c_salutation,
	item.i_category,
	catalog_sales.cs_ship_date_sk,
	store_sales.ss_hdemo_sk,
	catalog_sales.cs_ext_discount_amt,
	catalog_sales.cs_bill_hdemo_sk,
	date_dim.d_date_sk,
	item.i_category_id,
	customer.c_first_shipto_date_sk,
	date_dim.d_dow,
	customer.c_birth_year,
	customer.c_current_addr_sk,
	catalog_sales.cs_wholesale_cost,
	catalog_sales.cs_quantity,
	store_sales.ss_ext_discount_amt,
	customer.c_birth_country,
	store_sales.ss_item_sk,
	catalog_sales.cs_sold_time_sk,
	customer.c_birth_month,
	customer.c_customer_id,
	date_dim.d_dom,
	item.i_color,
	item.i_size,
	store_sales.ss_coupon_amt,
	catalog_sales.cs_ext_sales_price,
	catalog_sales.cs_catalog_page_sk,
	store_sales.ss_addr_sk,
	item.i_units,
	catalog_sales.cs_call_center_sk,
	catalog_sales.cs_sales_price,
	catalog_sales.cs_ship_addr_sk,
	item.i_brand_id,
	catalog_sales.cs_net_paid_inc_tax,
	item.i_brand,
	store_sales.ss_list_price,
	store_sales.ss_ticket_number,
	item.i_current_price,
	date_dim.d_month_seq,
	item.i_item_id,
	store_sales.ss_quantity,
	customer.c_last_review_date_sk,
	catalog_sales.cs_bill_cdemo_sk,
	catalog_sales.cs_warehouse_sk,
	catalog_sales.cs_ship_customer_sk,
	item.i_manufact_id,
	customer.c_email_address,
	catalog_sales.cs_ship_mode_sk,
	store_sales.ss_sales_price,
	item.i_item_desc,
	date_dim.d_moy,
	catalog_sales.cs_ext_list_price,
	date_dim.d_date,
	store_sales.ss_net_profit,
	catalog_sales.cs_promo_sk,
	customer.c_preferred_cust_flag,
	store_sales.ss_wholesale_cost,
	store_sales.ss_net_paid
FROM
	customer,
	item,
	date_dim,
	store_sales,
	catalog_sales
WHERE
	catalog_sales.cs_item_sk = item.i_item_sk
	AND catalog_sales.cs_bill_customer_sk = customer.c_customer_sk
	AND date_dim.d_year = 2000
	AND (((date_dim.d_year = 2000) OR (date_dim.d_year = 2001) OR (date_dim.d_year = 2002) OR (date_dim.d_year = 2003)))
	AND catalog_sales.cs_sold_date_sk = date_dim.d_date_sk
	AND store_sales.ss_sold_date_sk = date_dim.d_date_sk
	AND date_dim.d_moy = 2
	AND store_sales.ss_item_sk = item.i_item_sk
	AND store_sales.ss_customer_sk = customer.c_customer_sk
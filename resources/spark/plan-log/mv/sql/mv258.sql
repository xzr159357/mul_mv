SELECT
	warehouse.w_state,
	catalog_sales.cs_ext_ship_cost,
	catalog_sales.cs_wholesale_cost,
	date_dim.d_dow,
	catalog_sales.cs_quantity,
	date_dim.d_quarter_name,
	date_dim.d_day_name,
	catalog_sales.cs_net_profit,
	catalog_sales.cs_net_paid,
	catalog_sales.cs_sold_time_sk,
	catalog_sales.cs_item_sk,
	warehouse.w_warehouse_sk,
	catalog_sales.cs_list_price,
	warehouse.w_county,
	date_dim.d_qoy,
	catalog_sales.cs_order_number,
	date_dim.d_dom,
	catalog_sales.cs_ext_wholesale_cost,
	warehouse.w_warehouse_name,
	catalog_sales.cs_ext_sales_price,
	catalog_sales.cs_catalog_page_sk,
	catalog_sales.cs_call_center_sk,
	catalog_sales.cs_sales_price,
	catalog_sales.cs_ship_addr_sk,
	warehouse.w_city,
	date_dim.d_week_seq,
	date_dim.d_year,
	catalog_sales.cs_net_paid_inc_tax,
	date_dim.d_month_seq,
	catalog_sales.cs_bill_cdemo_sk,
	catalog_sales.cs_warehouse_sk,
	catalog_sales.cs_ship_customer_sk,
	catalog_sales.cs_ship_mode_sk,
	warehouse.w_warehouse_sq_ft,
	catalog_sales.cs_sold_date_sk,
	date_dim.d_moy,
	catalog_sales.cs_ext_list_price,
	catalog_sales.cs_coupon_amt,
	catalog_sales.cs_ship_date_sk,
	catalog_sales.cs_bill_customer_sk,
	date_dim.d_date,
	catalog_sales.cs_ext_discount_amt,
	catalog_sales.cs_promo_sk,
	catalog_sales.cs_bill_addr_sk,
	catalog_sales.cs_bill_hdemo_sk,
	date_dim.d_date_sk,
	warehouse.w_country
FROM
	catalog_sales,
	date_dim,
	warehouse
WHERE
	date_dim.d_year = 2001
	AND catalog_sales.cs_sold_date_sk = date_dim.d_date_sk
	AND catalog_sales.cs_warehouse_sk = warehouse.w_warehouse_sk
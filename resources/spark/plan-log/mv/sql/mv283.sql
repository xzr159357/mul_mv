SELECT
	inventory.inv_item_sk,
	warehouse.w_state,
	item.i_manufact,
	catalog_sales.cs_ext_ship_cost,
	promotion.p_channel_dmail,
	date_dim.d_quarter_name,
	date_dim.d_day_name,
	customer_demographics.cd_education_status,
	catalog_sales.cs_net_profit,
	item.i_manager_id,
	catalog_sales.cs_net_paid,
	inventory.inv_warehouse_sk,
	catalog_sales.cs_item_sk,
	customer_demographics.cd_dep_employed_count,
	item.i_class_id,
	catalog_sales.cs_list_price,
	warehouse.w_warehouse_sk,
	date_dim.d_qoy,
	catalog_sales.cs_order_number,
	customer_demographics.cd_demo_sk,
	household_demographics.hd_vehicle_count,
	catalog_sales.cs_ext_wholesale_cost,
	customer_demographics.cd_credit_rating,
	promotion.p_channel_tv,
	date_dim.d_week_seq,
	date_dim.d_year,
	item.i_item_sk,
	item.i_product_name,
	item.i_wholesale_cost,
	inventory.inv_quantity_on_hand,
	customer_demographics.cd_purchase_estimate,
	customer_demographics.cd_marital_status,
	catalog_sales.cs_sold_date_sk,
	item.i_class,
	catalog_sales.cs_coupon_amt,
	catalog_sales.cs_ship_date_sk,
	catalog_sales.cs_bill_customer_sk,
	item.i_category,
	catalog_sales.cs_ext_discount_amt,
	customer_demographics.cd_gender,
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
	customer_demographics.cd_dep_college_count,
	warehouse.w_warehouse_name,
	item.i_size,
	catalog_sales.cs_ext_sales_price,
	catalog_sales.cs_catalog_page_sk,
	catalog_sales.cs_call_center_sk,
	inventory.inv_date_sk,
	item.i_units,
	catalog_sales.cs_sales_price,
	catalog_sales.cs_ship_addr_sk,
	household_demographics.hd_dep_count,
	warehouse.w_city,
	household_demographics.hd_income_band_sk,
	household_demographics.hd_demo_sk,
	catalog_sales.cs_net_paid_inc_tax,
	item.i_brand_id,
	promotion.p_promo_sk,
	item.i_brand,
	date_dim.d_month_seq,
	item.i_current_price,
	item.i_item_id,
	catalog_sales.cs_bill_cdemo_sk,
	catalog_sales.cs_warehouse_sk,
	promotion.p_channel_event,
	catalog_sales.cs_ship_customer_sk,
	item.i_manufact_id,
	household_demographics.hd_buy_potential,
	customer_demographics.cd_dep_count,
	catalog_sales.cs_ship_mode_sk,
	promotion.p_channel_email,
	warehouse.w_warehouse_sq_ft,
	item.i_item_desc,
	date_dim.d_moy,
	catalog_sales.cs_ext_list_price,
	date_dim.d_date,
	catalog_sales.cs_promo_sk,
	catalog_sales.cs_bill_addr_sk,
	warehouse.w_country
FROM
	catalog_sales LEFT JOIN promotion ON (catalog_sales.cs_promo_sk = promotion.p_promo_sk)	Join item
	Join inventory
	Join household_demographics
	Join customer_demographics
	Join date_dim
	Join warehouse
WHERE
	customer_demographics.cd_marital_status = 'D'
	AND catalog_sales.cs_bill_cdemo_sk = customer_demographics.cd_demo_sk
	AND catalog_sales.cs_bill_hdemo_sk = household_demographics.hd_demo_sk
	AND catalog_sales.cs_item_sk = item.i_item_sk
	AND catalog_sales.cs_item_sk = inventory.inv_item_sk
	AND catalog_sales.cs_ship_date_sk = date_dim.d_date_sk
	AND catalog_sales.cs_sold_date_sk = date_dim.d_date_sk
	AND household_demographics.hd_buy_potential = '>10000'
	AND inventory.inv_warehouse_sk = warehouse.w_warehouse_sk
	AND inventory.inv_date_sk = date_dim.d_date_sk
	AND date_dim.d_year = 1999
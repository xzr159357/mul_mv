SELECT
	item.i_manufact,
	customer_address.ca_location_type,
	store_returns.sr_returned_date_sk,
	customer_address.ca_city,
	store_sales.ss_promo_sk,
	store_returns.sr_return_amt,
	store_sales.ss_store_sk,
	customer_address.ca_state,
	customer_address.ca_country,
	item.i_manager_id,
	store_sales.ss_customer_sk,
	store.s_county,
	item.i_class_id,
	customer_address.ca_street_number,
	customer_address.ca_address_sk,
	store_sales.ss_sold_date_sk,
	customer.c_first_name,
	customer.c_first_sales_date_sk,
	store_sales.ss_cdemo_sk,
	customer_address.ca_street_name,
	customer.c_last_name,
	customer_address.ca_zip,
	store.s_store_sk,
	item.i_item_sk,
	item.i_product_name,
	store_sales.ss_ext_sales_price,
	customer_address.ca_county,
	store_returns.sr_item_sk,
	item.i_wholesale_cost,
	store_sales.ss_ext_tax,
	store.s_number_employees,
	store.s_store_id,
	store_sales.ss_ext_wholesale_cost,
	customer.c_current_cdemo_sk,
	customer_address.ca_gmt_offset,
	store_returns.sr_store_sk,
	store_sales.ss_ext_list_price,
	customer.c_customer_sk,
	store_returns.sr_ticket_number,
	store_sales.ss_sold_time_sk,
	item.i_class,
	customer.c_current_hdemo_sk,
	customer.c_birth_day,
	store.s_city,
	customer.c_login,
	customer.c_salutation,
	item.i_category,
	store_sales.ss_hdemo_sk,
	item.i_category_id,
	customer.c_first_shipto_date_sk,
	customer.c_birth_year,
	customer.c_current_addr_sk,
	store.s_zip,
	store_sales.ss_ext_discount_amt,
	customer.c_birth_country,
	store.s_street_type,
	store_sales.ss_item_sk,
	store_returns.sr_net_loss,
	customer.c_birth_month,
	customer.c_customer_id,
	item.i_color,
	store_returns.sr_cdemo_sk,
	store.s_street_name,
	item.i_size,
	store_sales.ss_coupon_amt,
	store.s_gmt_offset,
	store_sales.ss_addr_sk,
	item.i_units,
	store.s_store_name,
	store_returns.sr_customer_sk,
	item.i_brand_id,
	store.s_market_id,
	item.i_brand,
	store_sales.ss_ticket_number,
	store_sales.ss_list_price,
	store_returns.sr_return_quantity,
	item.i_current_price,
	customer_address.ca_street_type,
	item.i_item_id,
	store_sales.ss_quantity,
	store.s_company_id,
	customer.c_last_review_date_sk,
	store.s_company_name,
	store.s_state,
	item.i_manufact_id,
	store.s_suite_number,
	store_returns.sr_reason_sk,
	customer.c_email_address,
	customer_address.ca_suite_number,
	store_sales.ss_sales_price,
	item.i_item_desc,
	store_sales.ss_net_profit,
	store.s_street_number,
	customer.c_preferred_cust_flag,
	store_sales.ss_wholesale_cost,
	store_sales.ss_net_paid
FROM
	customer_address,
	customer,
	store_sales,
	item,
	store_returns,
	store
WHERE
	store_sales.ss_store_sk = store.s_store_sk
	AND store_sales.ss_ticket_number = store_returns.sr_ticket_number
	AND store_sales.ss_item_sk = item.i_item_sk
	AND store_sales.ss_item_sk = store_returns.sr_item_sk
	AND store_sales.ss_customer_sk = customer.c_customer_sk
	AND store.s_zip = customer_address.ca_zip
	AND store.s_market_id = 8
	AND customer.c_birth_country = upper(customer_address.ca_country)
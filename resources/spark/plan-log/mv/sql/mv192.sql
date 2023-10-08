SELECT
	date_dim.d_dow,
	store.s_zip,
	store_returns.sr_returned_date_sk,
	store_sales.ss_promo_sk,
	store_returns.sr_return_amt,
	date_dim.d_quarter_name,
	store_sales.ss_ext_discount_amt,
	date_dim.d_day_name,
	store_sales.ss_store_sk,
	store.s_street_type,
	store_sales.ss_item_sk,
	store_sales.ss_customer_sk,
	store_returns.sr_net_loss,
	store.s_county,
	date_dim.d_qoy,
	date_dim.d_dom,
	store_returns.sr_cdemo_sk,
	store_sales.ss_sold_date_sk,
	store.s_street_name,
	store_sales.ss_cdemo_sk,
	store_sales.ss_coupon_amt,
	store.s_gmt_offset,
	store_sales.ss_addr_sk,
	store.s_store_name,
	store_returns.sr_customer_sk,
	store.s_store_sk,
	date_dim.d_week_seq,
	date_dim.d_year,
	store_sales.ss_ext_sales_price,
	store.s_market_id,
	store_sales.ss_ticket_number,
	store_sales.ss_list_price,
	store_returns.sr_return_quantity,
	date_dim.d_month_seq,
	store_returns.sr_item_sk,
	store_sales.ss_quantity,
	store_sales.ss_ext_tax,
	store_sales.ss_wholesale_cost,
	store.s_company_id,
	store.s_number_employees,
	store.s_store_id,
	store.s_company_name,
	store.s_state,
	store_sales.ss_ext_wholesale_cost,
	store.s_suite_number,
	store_returns.sr_reason_sk,
	store_sales.ss_ext_list_price,
	store_returns.sr_store_sk,
	store_returns.sr_ticket_number,
	date_dim.d_moy,
	store_sales.ss_sales_price,
	store_sales.ss_sold_time_sk,
	store.s_city,
	store_sales.ss_net_profit,
	date_dim.d_date,
	store.s_street_number,
	store_sales.ss_hdemo_sk,
	date_dim.d_date_sk,
	store_sales.ss_net_paid
FROM
	store_sales,
	store_returns,
	date_dim,
	store
WHERE
	store_sales.ss_store_sk = store.s_store_sk
	AND store_sales.ss_ticket_number = store_returns.sr_ticket_number
	AND store_sales.ss_customer_sk = store_returns.sr_customer_sk
	AND store_sales.ss_item_sk = store_returns.sr_item_sk
	AND store_sales.ss_sold_date_sk = date_dim.d_date_sk
	AND date_dim.d_moy = 8
	AND date_dim.d_year = 2001
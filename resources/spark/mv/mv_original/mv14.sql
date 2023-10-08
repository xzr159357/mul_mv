SELECT
	catalog_sales.cs_ext_discount_amt,
	catalog_sales.cs_ext_wholesale_cost,
	customer.c_birth_country,
	date_dim.d_week_seq,
	customer.c_last_name,
	catalog_sales.cs_bill_customer_sk,
	catalog_sales.cs_sold_date_sk,
	customer.c_customer_sk,
	catalog_sales.cs_net_profit,
	customer.c_current_addr_sk,
	date_dim.d_day_name,
	date_dim.d_date,
	customer.c_first_name,
	customer.c_preferred_cust_flag,
	customer.c_email_address,
	customer.c_customer_id,
	date_dim.d_year,
	date_dim.d_month_seq,
	catalog_sales.cs_ext_sales_price,
	date_dim.d_qoy,
	catalog_sales.cs_ext_list_price,
	catalog_sales.cs_catalog_page_sk,
	customer.c_login,
	date_dim.d_date_sk,
	date_dim.d_moy
FROM
	date_dim,
	catalog_sales,
	customer
WHERE
	catalog_sales.cs_sold_date_sk = date_dim.d_date_sk
	AND customer.c_customer_sk = catalog_sales.cs_bill_customer_sk
	AND (date_dim.d_year = 2001 OR date_dim.d_year = 2002)
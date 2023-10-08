CREATE MATERIALIZED VIEW IF NOT EXISTS mv12
AS
SELECT
	customer.c_email_address,
	customer.c_customer_id,
	customer.c_birth_country,
	date_dim.d_year,
	customer.c_last_name,
	customer.c_first_name,
	customer.c_preferred_cust_flag,
	customer.c_login,
	sum(((((store_sales.ss_ext_list_price - store_sales.ss_ext_wholesale_cost) - store_sales.ss_ext_discount_amt) + store_sales.ss_ext_sales_price) / 2.00)) AS AGG0
FROM
	date_dim,
	store_sales,
	customer
WHERE
	store_sales.ss_sold_date_sk = date_dim.d_date_sk
	AND	customer.c_customer_sk = store_sales.ss_customer_sk
GROUP BY
	customer.c_email_address,
	customer.c_customer_id,
	customer.c_birth_country,
	date_dim.d_year,
	customer.c_last_name,
	customer.c_first_name,
	customer.c_preferred_cust_flag,
	customer.c_login;
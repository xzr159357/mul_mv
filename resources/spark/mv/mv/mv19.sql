CREATE MATERIALIZED VIEW IF NOT EXISTS mv19
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
	sum(((((web_sales.ws_ext_list_price - web_sales.ws_ext_wholesale_cost) - web_sales.ws_ext_discount_amt) + web_sales.ws_ext_sales_price) / 2.00)) AS AGG0
FROM
	web_sales,
	date_dim,
	customer
WHERE
	customer.c_customer_sk = web_sales.ws_bill_customer_sk
	AND	web_sales.ws_sold_date_sk = date_dim.d_date_sk
GROUP BY
	customer.c_email_address,
	customer.c_customer_id,
	customer.c_birth_country,
	date_dim.d_year,
	customer.c_last_name,
	customer.c_first_name,
	customer.c_preferred_cust_flag,
	customer.c_login;
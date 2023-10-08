SELECT
	customer.c_email_address,
	customer.c_customer_id,
	customer.c_birth_country,
	date_dim.d_year,
	customer.c_last_name,
	customer.c_first_name,
	customer.c_preferred_cust_flag,
	customer.c_login,
	sum(((((catalog_sales.cs_ext_list_price - catalog_sales.cs_ext_wholesale_cost) - catalog_sales.cs_ext_discount_amt) + catalog_sales.cs_ext_sales_price) / 2.00)) AS AGG0
FROM
	date_dim,
	catalog_sales,
	customer
WHERE
	catalog_sales.cs_sold_date_sk = date_dim.d_date_sk
	AND	customer.c_customer_sk = catalog_sales.cs_bill_customer_sk
GROUP BY
	customer.c_email_address,
	customer.c_customer_id,
	customer.c_birth_country,
	date_dim.d_year,
	customer.c_last_name,
	customer.c_first_name,
	customer.c_preferred_cust_flag,
	customer.c_login
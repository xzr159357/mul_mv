CREATE MATERIALIZED VIEW IF NOT EXISTS mv13
PARTITIONED BY (cs_sold_date_sk)
AS
SELECT
	catalog_sales.cs_ext_discount_amt,
	catalog_sales.cs_ext_wholesale_cost,
	customer.c_birth_country,
	customer.c_last_name,
	catalog_sales.cs_bill_customer_sk,
	catalog_sales.cs_sold_date_sk,
	customer.c_customer_sk,
	catalog_sales.cs_net_profit,
	customer.c_current_addr_sk,
	customer.c_first_name,
	customer.c_preferred_cust_flag,
	customer.c_email_address,
	customer.c_customer_id,
	catalog_sales.cs_ext_sales_price,
	catalog_sales.cs_ext_list_price,
	catalog_sales.cs_catalog_page_sk,
	customer.c_login
FROM
	catalog_sales,
	customer
WHERE
	customer.c_customer_sk = catalog_sales.cs_bill_customer_sk
DISTRIBUTE BY cs_sold_date_sk;
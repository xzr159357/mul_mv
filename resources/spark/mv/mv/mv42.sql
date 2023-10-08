CREATE MATERIALIZED VIEW IF NOT EXISTS mv42
AS
SELECT
	customer.c_preferred_cust_flag,
	customer_address.ca_zip,
	substr(customer_address.ca_zip, 1, 5),
	count(1) AS AGG0
FROM
	customer_address,
	customer
WHERE
	customer_address.ca_address_sk = customer.c_current_addr_sk
GROUP BY
	customer.c_preferred_cust_flag,
	customer_address.ca_zip,
	substr(customer_address.ca_zip, 1, 5);
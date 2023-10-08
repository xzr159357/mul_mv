SELECT
	customer.c_email_address,
	customer.c_customer_id,
	customer.c_birth_country,
	customer_address.ca_zip,
	customer_address.ca_address_sk,
	customer.c_last_name,
	customer.c_customer_sk,
	customer_address.ca_state,
	customer.c_current_addr_sk,
	customer.c_first_name,
	customer.c_preferred_cust_flag,
	customer.c_login
FROM
	customer_address,
	customer
WHERE
	customer.c_preferred_cust_flag = 'Y'
	AND customer_address.ca_address_sk = customer.c_current_addr_sk
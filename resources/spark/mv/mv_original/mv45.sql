SELECT
	customer.c_preferred_cust_flag,
	date_dim.d_qoy,
	date_dim.d_year,
	store.s_store_name,
	sum(store_sales.ss_net_profit) AS AGG0
FROM
	customer_address,
	customer,
	date_dim,
	store_sales,
	store
WHERE
	store_sales.ss_store_sk = store.s_store_sk
	AND	substr(store.s_zip, 1, 2) = substr(customer_address.ca_zip, 1, 2)
	AND	customer_address.ca_address_sk = customer.c_current_addr_sk
	AND	store_sales.ss_sold_date_sk = date_dim.d_date_sk
GROUP BY
	customer.c_preferred_cust_flag,
	date_dim.d_qoy,
	date_dim.d_year,
	store.s_store_name
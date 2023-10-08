SELECT
	customer_address.ca_state,
	date_dim.d_year,
	date_dim.d_moy,
	count(1) AS AGG0
FROM
	customer_address,
	customer,
	item,
	date_dim,
	store_sales
WHERE
	store_sales.ss_item_sk = item.i_item_sk
	AND	customer_address.ca_address_sk = customer.c_current_addr_sk
	AND	store_sales.ss_sold_date_sk = date_dim.d_date_sk
	AND	customer.c_customer_sk = store_sales.ss_customer_sk
GROUP BY
	customer_address.ca_state,
	date_dim.d_year,
	date_dim.d_moy
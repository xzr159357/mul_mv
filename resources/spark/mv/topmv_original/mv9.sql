SELECT
	date_dim.d_year,
	item.i_brand,
	item.i_manufact_id,
	date_dim.d_moy,
	item.i_brand_id,
	sum(store_sales.ss_ext_sales_price) AS AGG0
FROM
	item,
	date_dim,
	store_sales
WHERE
	date_dim.d_date_sk = store_sales.ss_sold_date_sk
	AND	store_sales.ss_item_sk = item.i_item_sk
GROUP BY
	date_dim.d_year,
	item.i_brand,
	item.i_manufact_id,
	date_dim.d_moy,
	item.i_brand_id
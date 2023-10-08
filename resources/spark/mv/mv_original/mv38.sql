SELECT
	promotion.p_channel_email,
	customer_demographics.cd_marital_status,
	promotion.p_channel_event,
	date_dim.d_year,
	customer_demographics.cd_gender,
	item.i_item_id,
	customer_demographics.cd_education_status,
	avg(store_sales.ss_quantity) AS AGG0,
	avg(store_sales.ss_list_price) AS AGG1,
	avg(store_sales.ss_coupon_amt) AS AGG2,
	avg(store_sales.ss_sales_price) AS AGG3
FROM
	customer_demographics,
	promotion,
	item,
	date_dim,
	store_sales
WHERE
	store_sales.ss_promo_sk = promotion.p_promo_sk
	AND	store_sales.ss_cdemo_sk = customer_demographics.cd_demo_sk
	AND	store_sales.ss_sold_date_sk = date_dim.d_date_sk
	AND	store_sales.ss_item_sk = item.i_item_sk
GROUP BY
	promotion.p_channel_email,
	customer_demographics.cd_marital_status,
	promotion.p_channel_event,
	date_dim.d_year,
	customer_demographics.cd_gender,
	item.i_item_id,
	customer_demographics.cd_education_status
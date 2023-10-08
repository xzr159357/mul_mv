CREATE MATERIALIZED VIEW IF NOT EXISTS mv5
AS
SELECT
	date_dim.d_week_seq,
	sum(CASE WHEN (date_dim.d_day_name = 'Friday'   ) THEN web_sales.ws_ext_sales_price ELSE null END) AS AGG0,
	sum(CASE WHEN (date_dim.d_day_name = 'Thursday' ) THEN web_sales.ws_ext_sales_price ELSE null END) AS AGG1,
	sum(CASE WHEN (date_dim.d_day_name = 'Sunday'   ) THEN web_sales.ws_ext_sales_price ELSE null END) AS AGG2,
	sum(CASE WHEN (date_dim.d_day_name = 'Monday'   ) THEN web_sales.ws_ext_sales_price ELSE null END) AS AGG3,
	sum(CASE WHEN (date_dim.d_day_name = 'Saturday' ) THEN web_sales.ws_ext_sales_price ELSE null END) AS AGG4,
	sum(CASE WHEN (date_dim.d_day_name = 'Wednesday') THEN web_sales.ws_ext_sales_price ELSE null END) AS AGG5,
	sum(CASE WHEN (date_dim.d_day_name = 'Tuesday'  ) THEN web_sales.ws_ext_sales_price ELSE null END) AS AGG6
FROM
	web_sales,
	date_dim
WHERE
	web_sales.ws_sold_date_sk = date_dim.d_date_sk
GROUP BY
	date_dim.d_week_seq;
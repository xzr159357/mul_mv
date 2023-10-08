SELECT
	inventory.inv_item_sk,
	item.i_product_name,
	item.i_manufact,
	item.i_brand,
	item.i_category_id,
	warehouse.w_state,
	warehouse.w_country,
	item.i_current_price,
	item.i_wholesale_cost,
	item.i_item_id,
	item.i_manager_id,
	inventory.inv_warehouse_sk,
	warehouse.w_warehouse_sk,
	item.i_class_id,
	inventory.inv_quantity_on_hand,
	warehouse.w_county,
	item.i_manufact_id,
	item.i_color,
	warehouse.w_warehouse_sq_ft,
	warehouse.w_warehouse_name,
	item.i_size,
	item.i_item_desc,
	item.i_class,
	inventory.inv_date_sk,
	item.i_units,
	item.i_category,
	warehouse.w_city,
	item.i_item_sk,
	item.i_brand_id
FROM
	item,
	inventory,
	warehouse
WHERE
	inventory.inv_warehouse_sk = warehouse.w_warehouse_sk
	AND inventory.inv_item_sk = item.i_item_sk
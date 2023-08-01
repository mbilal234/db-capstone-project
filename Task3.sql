SELECT item_name
FROM Menu
WHERE item_id IN (
    SELECT item_id
    FROM Order_Items
    WHERE item_id > 2
);

SELECT 
    i.item_id,
    i.item_name
FROM item_info i
INNER JOIN
    item_tree t ON i.item_id = t.item_id
where t.parent_item_id is NULL
ORDER BY item_id ASC;
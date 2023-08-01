SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS full_name,
    o.order_id,
    o.TotalCost,
    m.cusine AS menu_name,
    mi.CourseName,
    mi.StarterName
FROM
    Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Menu m ON o.MenuID = m.MenuID
JOIN MenuItems mi ON m.MenuItemsID = mi.MenuItemsID
WHERE
    o.TotalCost > 150
ORDER BY
    o.TotalCost;

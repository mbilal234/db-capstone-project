CREATE VIEW OrdersView AS
SELECT order_id AS OrderID, count(menu.MenuItemsID) AS Quantity, TotalCost AS Cost
FROM Orders JOIN Menu ON Orders.MenuID = Menu.MenuID JOIN menuitems ON Menu.MenuItemsID = menuitems.MenuItemsID
GROUP BY Menu.MenuID;

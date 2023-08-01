INSERT INTO Customers (first_name, last_name, email, phone, address)
VALUES
    ('John', 'Doe', 'john.doe@example.com', '+1 (123) 456-7890', '123 Main St'),
    ('Jane', 'Smith', 'jane.smith@example.com', '+1 (987) 654-3210', '456 Elm St');

INSERT INTO MenuItems (CourseName, StarterName, DesertName)
VALUES
    ('Pasta', 'Garlic Bread', 'Tiramisu'),
    ('Steak', 'Caesar Salad', 'Cheesecake');

INSERT INTO Menu (MenuItemsID, Cusine)
VALUES
    (1, 'Italian'),
    (2, 'American');

INSERT INTO Orders (customer_id, MenuID, order_date, TotalCost)
VALUES
    (1, 1, '2023-08-01', 30.99),
    (2, 2, '2023-08-02', 45.50);

INSERT INTO Staff (first_name, last_name, email, phone, address, role)
VALUES
    ('Mike', 'Johnson', 'mike.johnson@example.com', '+1 (555) 123-4567', '789 Oak St', 'Waiter'),
    ('Emily', 'Anderson', 'emily.anderson@example.com', '+1 (555) 987-6543', '321 Pine St', 'Chef');

INSERT INTO Bookings (customer_id, booking_date, booking_time, table_number)
VALUES
    (1, '2023-08-01', '18:30:00', 5),
    (2, '2023-08-02', '19:00:00', 2);

INSERT INTO Order_Status (order_id, delivery_status, status_date)
VALUES
    (1, 'Pending', '2023-08-01'),
    (2, 'Processing', '2023-08-02');

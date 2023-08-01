DROP DATABASE IF EXISTS LittleLemonDB;
CREATE DATABASE LittleLemonDB;
USE LittleLemonDB;
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    address VARCHAR(200)
);
CREATE TABLE MenuItems (
    MenuItemsID INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(100),
    StarterName VARCHAR(100),
    DesertName VARCHAR(100)
);
CREATE TABLE Menu (
    MenuID INT AUTO_INCREMENT PRIMARY KEY,
    MenuItemsID INT,
    Cusine VARCHAR(255),
    FOREIGN KEY (MenuItemsID) references MenuItems(MenuItemsID)
);
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    MenuID INT,
    order_date DATE,
    TotalCost Decimal(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
	FOREIGN KEY (MenuID) REFERENCES Menu(MenuID)
);
CREATE TABLE Staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    address VARCHAR(200),
    role VARCHAR(50)
);

CREATE TABLE Bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    booking_date DATE,
    booking_time TIME,
    table_number INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
CREATE TABLE Order_Status (
    status_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    delivery_status VARCHAR(50),
    status_date DATE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

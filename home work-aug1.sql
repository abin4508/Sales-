-- Create the Sales database
CREATE DATABASE Sales;

-- Use the Sales database
USE Sales;

-- Create the Orders table with constraints
CREATE TABLE Orders (
    Order_Id INT PRIMARY KEY,
    Customer_name VARCHAR(255) NOT NULL,
    Product_Category VARCHAR(255) NOT NULL,
    Ordered_item VARCHAR(255) UNIQUE NOT NULL,
    Contact_No VARCHAR(15) UNIQUE NOT NULL
);
#2
ALTER TABLE Orders
ADD order_quantity INT;
#3
ALTER TABLE Orders
RENAME TO sales_orders;
#4
INSERT INTO sales_orders (Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No, order_quantity)
VALUES 
(1, 'Alice Johnson', 'Electronics', 'Smartphone', '123-456-7890', 2),
(2, 'Bob Smith', 'Home Appliances', 'Washing Machine', '234-567-8901', 1),
(3, 'Carol White', 'Electronics', 'Laptop', '345-678-9012', 1),
(4, 'David Brown', 'Furniture', 'Dining Table', '456-789-0123', 1),
(5, 'Emma Davis', 'Clothing', 'Jacket', '567-890-1234', 3),
(6, 'Frank Green', 'Books', 'Science Fiction Novel', '678-901-2345', 4),
(7, 'Grace Wilson', 'Kitchenware', 'Blender', '789-012-3456', 2),
(8, 'Henry Lewis', 'Toys', 'Action Figure', '890-123-4567', 5),
(9, 'Ivy Martinez', 'Jewelry', 'Necklace', '901-234-5678', 1),
(10, 'Jack Thompson', 'Sports', 'Basketball', '012-345-6789', 3);
#5
SELECT Customer_name, Ordered_item
FROM sales_orders;
#6
UPDATE sales_orders
SET Ordered_item = 'Gaming Laptop'
WHERE Order_Id = 3;
#7
DROP TABLE sales_orders;




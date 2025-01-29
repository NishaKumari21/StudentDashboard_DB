-- Insert Users
use amazon;
INSERT INTO Users (user_id,name, email, password, address, phone) VALUES
(101,'Nisha Kumari', 'nisha@gmail.com', 'securepass123', 'Patna, Bihar', '9976543210'),
(102,'Amit Singh', 'amit@gmail.com', 'pass@amit', 'Delhi, India', '9988776655'),
(103,'Rahul Verma', 'rahul@gmail.com', 'rahul@123', 'Mumbai, India', '8765432109'),
(104,'Ayush Kumar','ayush@gmail.com','ayush@23', 'Goa, India','8033899930');

-- Insert Categories
INSERT INTO Categories (category_name) VALUES
('Electronics'),
('Clothing'),
('Home Appliances'),
('Books');

-- Insert Products
INSERT INTO Products (name, description, price, stock, category_id) VALUES
('iPhone 14', 'Latest Apple iPhone', 79999.99, 10, 1),
('Nike Shoes', 'Comfortable running shoes', 4999.99, 20, 2),
('Samsung Refrigerator', 'Double door fridge', 25000.00, 5, 3),
('The Alchemist', 'Famous book by Paulo Coelho', 499.50, 15, 4);

-- Insert Orders
INSERT INTO Orders (user_id, total_amount, status) VALUES
(1, 84999.99, 'Pending'),
(2, 4999.99, 'Shipped');

-- Insert Order Items
INSERT INTO Order_Items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 79999.99),
(2, 2, 1, 4999.99);

-- Insert Payments
INSERT INTO Payments (order_id, payment_method, status) VALUES
(1, 'Credit Card', 'Completed'),
(2, 'PayPal', 'Completed');

-- Insert Reviews
INSERT INTO Reviews (user_id, product_id, rating, review_text) VALUES
(1, 1, 5, 'Amazing phone! Worth the price.'),
(2, 2, 4, 'Very comfortable shoes.');

-- Insert Cart Items
INSERT INTO Cart (user_id, product_id, quantity) VALUES
(1, 3, 1),
(2, 4, 2);

-- Insert Shipping Details
INSERT INTO Shipping (order_id, address, delivery_date, status) VALUES
(1, 'Patna, Bihar', '2025-02-05', 'Out for Delivery'),
(2, 'Delhi, India', '2025-02-02', 'Delivered');


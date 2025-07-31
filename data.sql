-- Customers
INSERT INTO customers VALUES
(1, 'Alice', 'alice@mail.com', '555-1111', '123 Elm St', '2025-01-01'),
(2, 'Bob', 'bob@mail.com', '555-2222', '456 Oak St', '2025-02-15');

-- Restaurants
INSERT INTO restaurants VALUES
(1, 'Pizza Palace', 'Italian', 'Downtown', 4.5),
(2, 'Sushi Spot', 'Japanese', 'Uptown', 4.2);

-- Drivers
INSERT INTO drivers VALUES
(1, 'John Driver', 'Bike', '555-3333', TRUE),
(2, 'Jane Rider', 'Car', '555-4444', TRUE);

-- Orders
INSERT INTO orders VALUES
(101, 1, 1, '2025-07-30 11:45:00', '2025-07-30 12:15:00', 25.00, 'Central'),
(102, 2, 2, '2025-07-30 14:00:00', '2025-07-30 14:35:00', 40.50, 'North');

-- Order Items
INSERT INTO order_items VALUES
(1001, 101, 'Pepperoni Pizza', 1, 15.00),
(1002, 101, 'Garlic Bread', 2, 5.00),
(1003, 102, 'Sushi Platter', 1, 35.00),
(1004, 102, 'Miso Soup', 1, 5.50);

-- Deliveries
INSERT INTO deliveries VALUES
(201, 101, 1, '2025-07-30 12:00:00', '2025-07-30 12:15:00', 'Delivered'),
(202, 102, 2, '2025-07-30 14:10:00', '2025-07-30 14:35:00', 'Delivered');

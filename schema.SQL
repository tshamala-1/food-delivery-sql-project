-- customers table
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    address TEXT,
    created_at TIMESTAMP
);

-- restaurants table
DROP TABLE IF EXISTS restaurants;
CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY,
    name VARCHAR(100),
    cuisine_type VARCHAR(50),
    location VARCHAR(100),
    rating DECIMAL(2,1)
);

-- drivers table
DROP TABLE IF EXISTS drivers;
CREATE TABLE drivers (
    driver_id INT PRIMARY KEY,
    name VARCHAR(100),
    vehicle_type VARCHAR(50),
    phone VARCHAR(20),
    is_active BOOLEAN
);

-- orders table
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    restaurant_id INT REFERENCES restaurants(restaurant_id),
    order_time TIMESTAMP,
    delivery_time TIMESTAMP,
    total_amount DECIMAL(10,2),
    region VARCHAR(100)
);

-- order_items table
DROP TABLE IF EXISTS order_items;
CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    item_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2)
);

-- deliveries table
DROP TABLE IF EXISTS deliveries;
CREATE TABLE deliveries (
    delivery_id INT PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    driver_id INT REFERENCES drivers(driver_id),
    pickup_time TIMESTAMP,
    dropoff_time TIMESTAMP,
    status VARCHAR(50)
);

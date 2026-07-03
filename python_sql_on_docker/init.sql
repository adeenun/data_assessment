CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(50)
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    product_id INT REFERENCES products(product_id),
    order_date DATE,
    quantity INT,
    status VARCHAR(20)
);

INSERT INTO customers (name, country) VALUES
('Alice Smith', 'USA'), ('Bob Jones', 'UK'), 
('Charlie Brown', 'USA'), ('David Lee', 'Canada');

INSERT INTO products (product_name, category, price) VALUES
('Laptop', 'Electronics', 1200.00), ('Mouse', 'Electronics', 25.00),
('Desk', 'Furniture', 150.00), ('Chair', 'Furniture', 85.00);

INSERT INTO orders (customer_id, product_id, order_date, quantity, status) VALUES
(1, 1, '2023-10-01', 1, 'Completed'),
(1, 2, '2023-10-02', 2, 'Completed'),
(2, 3, '2023-10-03', 1, 'Completed'),
(3, 4, '2023-10-04', 10, 'Completed'),
(4, 2, '2023-10-05', 5, 'Pending'),
(1, 4, '2023-10-06', 1, 'Cancelled');
-- Database Schema
-- ============================================

-- ============================================
-- USERS TABLE
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    account_status VARCHAR(20),
    created_at DATE
);

-- ============================================
-- CUSTOMERS TABLE
-- ============================================

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    country VARCHAR(50),
    customer_status VARCHAR(20)
);

-- ============================================
-- PRODUCTS TABLE
-- ============================================

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2),
    in_stock BOOLEAN
);

-- ============================================
-- ORDERS TABLE

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    product_id INT,
    total_amount DECIMAL(10,2),
    quantity INT,
    order_status VARCHAR(20),

    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);

-- ============================================
-- TICKETS TABLE

CREATE TABLE tickets (
    ticket_id SERIAL PRIMARY KEY,
    user_id INT,
    issue TEXT,
    priority VARCHAR(20),
    is_resolved BOOLEAN,

    FOREIGN KEY (user_id)
        REFERENCES users(user_id)
);

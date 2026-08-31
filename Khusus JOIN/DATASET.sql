1. Tabel Customers
CREATE TABLE customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(100)
);
INSERT INTO customers (customer_id, customer_name, city)
VALUES
('C001', 'Andi', 'Jakarta'),
('C002', 'Budi', 'Bandung'),
('C003', 'Citra', 'Jakarta'),
('C004', 'Dinda', 'Surabaya'),
('C005', 'Eko', 'Bandung'),
('C006', 'Farah', 'Jakarta'),
('C007', 'Gilang', 'Yogyakarta'),
('C008', 'Hani', 'Surabaya');

2. Tabel Products
CREATE TABLE products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(100),
    price INTEGER
);
INSERT INTO products (product_id, product_name, category, price)
VALUES
('P001', 'Beras', 'Sembako', 15000),
('P002', 'Gula', 'Sembako', 14000),
('P003', 'Mie Instan', 'Makanan', 3500),
('P004', 'Kopi', 'Minuman', 12000),
('P005', 'Susu', 'Minuman', 18000),
('P006', 'Telur', 'Sembako', 20000);

3. Tabel Sales
CREATE TABLE sales (
    transaction_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INTEGER,
    
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
INSERT INTO sales (transaction_id, customer_id, product_id, quantity)
VALUES
('T001', 'C001', 'P001', 10),
('T002', 'C002', 'P003', 5),
('T003', 'C003', 'P002', 8),
('T004', 'C001', 'P004', 3),
('T005', 'C004', 'P006', 12),
('T006', 'C005', 'P005', 7),
('T007', 'C006', 'P001', 15),
('T008', 'C002', 'P004', 6),
('T009', 'C003', 'P003', 20),
('T010', 'C007', 'P002', 9),
('T011', 'C001', 'P005', 4),
('T012', 'C006', 'P006', 11);

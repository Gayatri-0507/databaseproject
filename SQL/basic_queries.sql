--Table Name: customer details

CREATE TABLE customers (
    customer_id NUMBER(10) PRIMARY KEY,
    customer_name VARCHAR(20) NOT NULL,
    customer_address VARCHAR(15) NOT NULL,
    Email_id VARCHAR(50) NOT NULL,
    Mobile_no NUMBER(10) NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    DOB DATE NOT NULL
);



INSERT INTO customers VALUES   (1, 'John Doe', '123 Main St', 'johndoe@email.com', 1234567890, 'Male',date '1990-05-15');
INSERT INTO customers VALUES    (2, 'Jane Smith', '456 Elm St', 'janesmith@email.com', 9876543210, 'Female', date'1992-09-25');
INSERT INTO customers VALUES    (3, 'Bob Johnson', '789 Oak St', 'bob@example.com', 5556667777, 'Male',date '1985-12-10');
INSERT INTO customers VALUES    (4, 'Alice Brown', '101 Pine St', 'alice@example.com', 9998887777, 'Female', date'1998-07-20');
INSERT INTO customers VALUES    (5, 'Eva Wilson', '202 Cedar St', 'eva@email.com', 8887776666, 'Female',date '1980-03-05');
INSERT INTO customers VALUES    (6, 'Michael Lee', '303 Maple St', 'michael@example.com', 7776665555, 'Male',date '1975-11-18');
INSERT INTO customers VALUES    (7, 'Sophia Garcia', '404 Birch St', 'sophia@email.com', 6665554444, 'Female',date '1995-01-30');
INSERT INTO customers VALUES    (8, 'Daniel Martinez', '505 Walnut St', 'daniel@example.com', 5554443333, 'Male',date '1989-08-12');
INSERT INTO customers VALUES    (9, 'Olivia Lopez', '606 Spruce St', 'olivia@email.com', 4443332222, 'Female',date '1991-06-22');


select * from customers;

--DELETE a row from table
DELETE FROM customers WHERE customer_id = 5;

--ALTER DROP
ALTER TABLE customers 
DROP COLUMN Mobile_no;


--Alter(Rename column)
ALTER TABLE customers
RENAME COLUMN Gender TO Gender_category;

--Alter(add constraint,)
ALTER TABLE customers
ADD CONSTRAINT unique_email UNIQUE (Email_id);

--Alter(change datatype) 
ALTER TABLE customers
MODIFY Gender_category VARCHAR(15);

--Alter(add column)
ALTER TABLE customers
ADD Registration_date DATE;


--Table Name: category details
CREATE TABLE categories (
    Categoryid NUMBER(10) PRIMARY KEY,
    categoryname VARCHAR(20) NOT NULL,
    description VARCHAR(100) NOT NULL
);


INSERT INTO categories VALUES (1, 'Clothing', 'Apparel and clothing items');
INSERT INTO categories VALUES (3, 'Footwear', 'Shoes and footwear accessories');
INSERT INTO categories VALUES (4, 'HomeandLiving', 'Furniture and home decor');
INSERT INTO categories VALUES  (5, 'Beauty', 'Cosmetics and personal care products');
INSERT INTO categories VALUES  (6, 'Books', 'Books and reading materials');
INSERT INTO categories VALUES   (7, 'SportsandOutdoors', 'Sports equipment and outdoor gear');
INSERT INTO categories VALUES    (8, 'Toys', 'Toys and games for children');
INSERT INTO categories VALUES  (9, 'Jewelry', 'Jewelry and accessories');
INSERT INTO categories VALUES    (2, 'Electronics', 'Electronic gadgets and devices');

select * from categories;

--Delete a row from the table
DELETE FROM categories WHERE Categoryid = 4;

--Alter(Drop column) 
ALTER TABLE categories 
DROP COLUMN description;


--Alter(Rename column)
ALTER TABLE categories 
RENAME COLUMN categoryname TO name_of_items;


--Alter(Modify constraint/add constraint,)
ALTER TABLE categories 
ADD CONSTRAINT unique_category UNIQUE (name_of_items);


--Alter(change datatype) 
ALTER TABLE Categories
MODIFY categoryid int;

--Alter(add column)
ALTER TABLE categories 
ADD description VARCHAR(100) ;





--Table Name: promotion details

CREATE TABLE promotions (
    promotionid NUMBER(10) PRIMARY KEY,
    promotioncode VARCHAR(20) NOT NULL,
    Description VARCHAR(100) NOT NULL,
    discountpercentage NUMBER(5, 2) NOT NULL,
    startdate DATE NOT NULL,
    enddate DATE NOT NULL
);
INSERT INTO promotions VALUES (1, 'SUMMER20', 'Big discounts on summer collection', 20.00, date '2023-06-15', date '2023-06-30');
INSERT INTO promotions VALUES (2, 'SCHOOL15', 'Special deals on school supplies', 15.00, date '2023-08-01', date '2023-08-15');
INSERT INTO promotions VALUES (3, 'HOLIDAY25', 'Festive discounts for holiday shopping', 25.00, date '2023-11-20', date '2023-12-31');
INSERT INTO promotions VALUES (4, 'BF40', 'Massive discounts on Black Friday', 40.00, date '2023-11-25', date '2023-11-25');
INSERT INTO promotions VALUES (5, 'LOVE10', 'Gifts for your loved ones', 10.00, date '2023-02-01', date '2023-02-14');
INSERT INTO promotions VALUES (6, 'CLEAR30', 'Clearance items at discounted prices', 30.00, date '2023-07-10', date '2023-07-31');
INSERT INTO promotions VALUES (7, 'NY15', 'Welcoming the new year with great deals', 15.00, date '2023-01-01', date '2023-01-15');
INSERT INTO promotions VALUES (8, 'SPRING25', 'Clearance discounts for spring collection', 25.00, date '2023-04-01', date '2023-04-15');
INSERT INTO promotions VALUES (9, 'ANNIV20', 'Celebrating our store anniversary', 20.00, date '2023-09-15', date '2023-09-30');

select * from promotions;

--Delete a row from the table
DELETE FROM promotions WHERE promotionid = 4;

--Alter(Drop column) 
ALTER TABLE promotions
DROP COLUMN enddate;

--Alter(Rename column)
ALTER TABLE promotions
RENAME COLUMN PROMOTIONCODE TO Promo_code;

--Alter(add constraint,)
ALTER TABLE promotions
ADD CONSTRAINT check_discount_percentage CHECK (DISCOUNTPERCENTAGE >= 0 AND DISCOUNTPERCENTAGE <= 100);

--Alter(change datatype) 
ALTER TABLE promotions
MODIFY STARTDATE timestamp;

--Alter(add column)
ALTER TABLE promotions 
ADD IsActive NUMBER(1) DEFAULT 0;




--Table Name: payment method details

CREATE TABLE paymentmethods (
    paymentmethodid NUMBER(10) PRIMARY KEY,
    paymentmethodname VARCHAR(20) NOT NULL,
    description VARCHAR(100) NOT NULL
);


 INSERT INTO paymentmethods VALUES   (1, 'Credit Card', 'Pay using a credit card');
INSERT INTO paymentmethods VALUES    (2, 'Debit Card', 'Pay using a debit card');
INSERT INTO paymentmethods VALUES    (3, 'PayPal', 'Pay using your PayPal account');
INSERT INTO paymentmethods VALUES    (4, 'Bank Transfer', 'Transfer funds directly from your bank account');
INSERT INTO paymentmethods VALUES    (5, 'Cash on Delivery', 'Pay with cash upon delivery');
INSERT INTO paymentmethods VALUES    (6, 'Digital Wallet', 'Use a digital wallet for payment');
INSERT INTO paymentmethods VALUES    (7, 'Gift Card', 'Redeem a gift card as payment');
INSERT INTO paymentmethods VALUES    (8, 'Google Pay', 'Make payments using Google Pay');
INSERT INTO paymentmethods VALUES    (9, 'Apple Pay', 'Make payments using Apple Pay');

select * from paymentmethods;

--Delete a row from the table
DELETE FROM paymentmethods WHERE paymentmethodid = 4;

--Alter(Drop column) 
ALTER TABLE paymentmethods
DROP COLUMN description;

--Alter(Rename column)
ALTER TABLE paymentmethods
RENAME COLUMN Paymentmethodname TO Method_name;

--Alter(add constraint,)
ALTER TABLE paymentmethods
ADD CONSTRAINT unique_method_name UNIQUE (Method_name);

--Alter(change datatype) 
ALTER TABLE paymentmethods
MODIFY Method_name VARCHAR(30);

--Alter(add column)
ALTER TABLE paymentmethods 
ADD Is_active NUMBER(1) DEFAULT 0;



----Table Name: brand details
CREATE TABLE brands (
    Brand_id INT PRIMARY KEY,
    Brand_name VARCHAR(100) NOT NULL,
    description VARCHAR(50),
    website VARCHAR(100) UNIQUE
);


 INSERT INTO brands VALUES   (1, 'Nike', 'Sportswear and athletic shoes', 'https://example.com/nike-logo.png');
INSERT INTO brands VALUES    (7, 'Puma', 'Sportswear and athletic gear', 'https://example.com/puma-logo.png');
INSERT INTO brands VALUES    (8, 'Amazon Basics', 'Amazon own brand for various products', 'https://example.com/amazon-basics-logo.png');
 INSERT INTO brands VALUES   (2, 'Apple', 'Electronics and technology products', 'https://example.com/apple-logo.png');
 INSERT INTO brands VALUES   (3, 'Adidas', 'Sportswear, shoes, and accessories', 'https://example.com/adidas-logo.png');
INSERT INTO brands VALUES    (4, 'Samsung', 'Electronics and consumer appliances', 'https://example.com/samsung-logo.png');
 INSERT INTO brands VALUES   (5, 'Sony', 'Electronics and entertainment products', 'https://example.com/sony-logo.png');
 INSERT INTO brands VALUES   (6, 'HandM', 'Fashion and clothing retailer', 'https://example.com/hm-logo.png');
 INSERT INTO brands VALUEs   (9, 'LEGO', 'Popular toy manufacturer', 'https://example.com/lego-logo.png');

select * from brands;

--Delete a row from the table
DELETE FROM brands WHERE "Brand-id" = 8;

--Alter(Drop column) 
ALTER TABLE brands
DROP COLUMN website;

--Alter(Rename column)
ALTER TABLE brands
RENAME COLUMN "Brand-name" TO Brand_name;

--Alter(Modify constraint/add constraint,)
ALTER TABLE brands
ADD CONSTRAINT check_brand_name_length CHECK (LENGTH(Brand_name) BETWEEN 20 AND 50);


--Alter(change datatype) 
ALTER TABLE brands
MODIFY Brand_name VARCHAR(50);

--Alter(add column)
ALTER TABLE brands
ADD Founded_year int;

--Table Name: address details

CREATE TABLE addresses (
    Addressid INT PRIMARY KEY,
    customerid NUMBER(10) REFERENCES customers(customer_id),
    streetaddress VARCHAR(100) NOT NULL,
    city VARCHAR(15) NOT NULL,
    states VARCHAR(10),
    zipcode NUMBER(10) NOT NULL,
    country VARCHAR(100) NOT NULL
);


--Insert all values into the table
INSERT INTO addresses VALUES (1, 1, '123 Main St', 'Cityville', 'CA', 12345, 'USA');
INSERT INTO addresses VALUES    (2, 2, '456 Elm Ave', 'Townsville', 'NY', 67890, 'USA');
 INSERT INTO addresses VALUES   (3, 3, '789 Oak Rd', 'Villagetown', 'TX', 54321, 'USA');
INSERT INTO addresses VALUES    (4, 4, '567 Pine St', 'Hamletown', 'IL', 98765, 'USA');
INSERT INTO addresses VALUES    (5, 5, '890 Maple Ave', 'Suburbia', 'GA', 12345, 'USA');
 INSERT INTO addresses VALUES   (6, 6, '678 Cherry Rd', 'Countryside', 'OH', 98765, 'USA');
 INSERT INTO addresses VALUES   (7, 7, '345 Birch St', 'Ruraltown', 'KS', 54321, 'USA');
  INSERT INTO addresses VALUES  (8, 8, '456 Oak Ave', 'Uptown', 'FL', 13579, 'USA');
 INSERT INTO addresses VALUES   (9, 9, '789 Pine Rd', 'Downtown', 'CA', 24680, 'USA');

select * from addresses
--Delete a row from the table
DELETE FROM addresses WHERE Addressid = 4;

--Alter(Drop column)
ALTER TABLE addresses
DROP COLUMN country;

--Alter(Rename column)
ALTER TABLE addresses
RENAME COLUMN city TO city_name;

--Alter(add constraint)
ALTER TABLE addresses
ADD CONSTRAINT fk_customer_id FOREIGN KEY (customerid) REFERENCES customers(customer_id);

--Alter(change datatype) 
ALTER TABLE addresses
MODIFY states VARCHAR2(20);

--Alter(add column)
ALTER TABLE addresses
ADD address_type VARCHAR2(50);


--Table Name: order details
--Create sql for the above table
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER REFERENCES customers(customer_id),
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    shipping_address VARCHAR(100) NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    status VARCHAR(20) NOT NULL
);

Insert all values into the table
INSERT INTO orders VALUES (order_id, customer_id, order_date, total_amount, shipping_address, payment_method, status)
INSERT INTO orders VALUES (1, 1, DATE '2023-07-01', 199.99, '1', '1', 'Processing');
INSERT INTO orders VALUES (2, 2, DATE '2023-07-02', 699.99, '2', '3', 'Shipped');
INSERT INTO orders VALUES (3, 3, DATE '2023-08-03', 799.99, '3', '2', 'Delivered');
INSERT INTO orders VALUES (4, 4, DATE '2023-08-04', 599.99, '4', '4', 'Processing');
INSERT INTO orders VALUES (5, 5, DATE '2023-08-05', 299.99, '5', '5', 'Shipped');
INSERT INTO orders VALUES (6, 6, DATE '2023-08-06', 149.99, '6', '6', 'Delivered');
INSERT INTO orders VALUES (7, 7, DATE '2023-08-07', 399.99, '7', '7', 'Processing');
INSERT INTO orders VALUES (8, 8, DATE '2023-08-08', 599.99, '8', '8', 'Shipped');
INSERT INTO orders VALUES (9, 9, DATE '2023-08-09', 199.99, '9', '9', 'Delivered');
select * from orders;

--Delete a row from the table
DELETE FROM orders WHERE order_id = 4;

--Alter(Drop column) 
ALTER TABLE orders
DROP COLUMN status;

--Alter(Rename column)
ALTER TABLE orders
RENAME COLUMN total_amount TO Order_total;

--Alter(add constraint,)
ALTER TABLE orders
ADD CONSTRAINT check_order_total CHECK (Order_total >= 0);

--Alter(change datatype) 
ALTER TABLE orders
MODIFY Order_date TIMESTAMP;

--Alter(add column)
ALTER TABLE orders
ADD  Shipping_date DATE;



--Table Name: refundtransaction details
--Create sql for the above table
CREATE TABLE refunds (
    Refund_id INT PRIMARY KEY,
    Order_id INT REFERENCES orders(order_id),
    Refund_date DATE NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    Refund_amount DECIMAL(10, 2) NOT NULL,
    Reason VARCHAR(50) NOT NULL,
    status VARCHAR(20) NOT NULL
);

--Insert all values into the table
 INSERT INTO refunds VALUES (1, 1, DATE '2023-08-15', 25.00, 25.00, 'Product damaged', 'Processed');
INSERT INTO refunds VALUES (2, 2, DATE '2023-08-16', 50.50, 50.50, 'Wrong item received', 'Processed');
INSERT INTO refunds VALUES (3, 3, DATE '2023-08-17', 10.25, 10.25, 'Not satisfied with product', 'Pending');
INSERT INTO refunds VALUES (4, 4, DATE '2023-08-18', 45.75, 45.75, 'Product never arrived', 'Processed');
INSERT INTO refunds VALUES (5, 5, DATE '2023-08-19', 30.50, 30.50, 'Product damaged during shipping', 'Processed');
INSERT INTO refunds VALUES (6, 6, DATE '2023-08-20', 15.75, 15.75, 'Changed my mind', 'Pending');
INSERT INTO refunds VALUES (7, 7, DATE '2023-08-21', 20.25, 20.25, 'Product not as described', 'Processed');
INSERT INTO refunds VALUES (8, 8, DATE '2023-08-22', 35.00, 35.00, 'Received wrong size', 'Processed');
INSERT INTO refunds VALUES (9, 9, DATE '2023-08-23', 40.25, 40.25, 'Defective product', 'Pending');

select * from refunds;

--Delete a row from the table
DELETE FROM refunds WHERE Refund_id = 4;



--Alter(Rename column)
ALTER TABLE refunds
RENAME COLUMN status TO Refund_status;

--Alter(Modify constraint/add constraint,)
ALTER TABLE refunds
ADD CONSTRAINT chk_positive_refund_amount CHECK (Refund_Amount > 0);


--Alter(change datatype) 
ALTER TABLE refunds
MODIFY Reason VARCHAR(100);

--Alter(add column)
ALTER TABLE refunds
ADD Processed_by VARCHAR(50);

--Alter(Drop column) 
ALTER TABLE refunds
DROP COLUMN Refund_amount;


--Table Name: paymenttransaction details

--Create sql for the above table
CREATE TABLE transactions (
    transaction_id INTEGER PRIMARY KEY,
    order_id INTEGER REFERENCES orders(order_id),
    Paymentmethod_id INT REFERENCES paymentmethods(paymentmethodid),
    transaction_date TIMESTAMP NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    status VARCHAR(20) NOT NULL
);

--Insert all values into the table
INSERT INTO transactions VALUES (1, 1, 1, TIMESTAMP '2023-07-15 02:30:00.000000', 25.00, 'Completed');
INSERT INTO transactions VALUES (2, 2, 2, TIMESTAMP '2023-07-16 10:45:00.000000', 50.50, 'Completed');
INSERT INTO transactions VALUES (3, 3, 1, TIMESTAMP '2023-08-17 09:15:00.000000', 10.25, 'Pending');
INSERT INTO transactions VALUES (4, 4, 3, TIMESTAMP '2023-08-18 16:20:00.000000', 45.75, 'Completed');
INSERT INTO transactions VALUES (5, 5, 2, TIMESTAMP '2023-08-19 13:55:00.000000', 30.50, 'Completed');
INSERT INTO transactions VALUES (6, 6, 1, TIMESTAMP '2023-08-20 11:10:00.000000', 15.75, 'Pending');
INSERT INTO transactions VALUES (7, 7, 3, TIMESTAMP '2023-08-21 08:45:00.000000', 20.25, 'Completed');
INSERT INTO transactions VALUES (8, 8, 2, TIMESTAMP '2023-08-22 12:25:00.000000', 35.00, 'Completed');
INSERT INTO transactions VALUES (9, 9, 1, TIMESTAMP '2023-08-23 15:40:00.000000', 40.25, 'Pending');

select * from transactions;

--Delete a row from the table
DELETE FROM transactions WHERE transaction_id = 4;

--Alter(Drop column) 
ALTER TABLE transactions
DROP COLUMN Amount;

--Alter(Rename column)
ALTER TABLE transactions
RENAME COLUMN status TO Transaction_status;

--Alter(add constraint,)
ALTER TABLE transactions
ADD CONSTRAINT check_transaction_status CHECK (Transaction_status IN ('Completed', 'Pending'));

--Alter(change datatype) 
ALTER TABLE transactions
MODIFY Transaction_date DATE;

--Alter(add column)
ALTER TABLE transactions
ADD  Transaction_type VARCHAR(20);





--Table Name: product details
--Create sql for the above table
CREATE TABLE products (
    Product_id INTEGER PRIMARY KEY,
    Brand_id INTEGER REFERENCES brands(Brand_id),
    Category_id INTEGER REFERENCES categories(Categoryid),
    Refund_date DATE NOT NULL,
    Price DECIMAL(10, 2),
    Stock_quantity INTEGER NOT NULL,
    Descriptions VARCHAR(100) NOT NULL,
    Imageurl VARCHAR(200) NOT NULL
);

--Insert all values into the table
 INSERT INTO products VALUES (1, 1, 3, DATE '2023-08-15', 99.99, 100, 'High-performance running shoes', 'https://example.com/shoes-image.png');
INSERT INTO products VALUES (3, 8, 4, DATE '2023-08-16', 499.99, 10, 'Comfortable and stylish sofa for your living room', 'https://example.com/sofa-image.png');
INSERT INTO products VALUES (4, 8, 5, DATE '2023-08-17', 19.99, 200, 'Set of vibrant lipstick colors', 'https://example.com/lipstick-image.png');
INSERT INTO products VALUES (5, 5, 6, DATE '2023-08-18', 12.99, 75, 'Bestselling fiction novel by a renowned author', 'https://example.com/book-image.png');
INSERT INTO products VALUES (6, 3, 7, DATE '2023-08-19', 59.99, 30, 'High-quality tennis racket for beginners', 'https://example.com/racket-image.png');
INSERT INTO products VALUES (7, 9, 8, DATE '2023-08-20', 29.99, 100, 'Family board game for entertainment', 'https://example.com/boardgame-image.png');
INSERT INTO products VALUES (8, 6, 9, DATE '2023-08-21', 999.99, 5, 'Elegant diamond necklace for special occasions', 'https://example.com/necklace-image.png');
INSERT INTO products VALUES (2, 2, 2, DATE '2023-08-22', 699.99, 50, 'Flagship smartphone with advanced features', 'https://example.com/smartphone-image.png');
INSERT INTO products VALUES (9, 4, 2, DATE '2023-08-23', 299.99, 20, 'Android tablet with a large screen', 'https://example.com/tablet-image.png');

select * from products;
--Delete a row from the table
DELETE FROM products WHERE Product_id = 4;

--Alter(Drop column) 
ALTER TABLE products
DROP COLUMN Imageurl;

--Alter(Rename column)
ALTER TABLE products
RENAME COLUMN Refund_date TO Return_date;

--Alter(add constraint,)
ALTER TABLE products
MODIFY Price DECIMAL(10, 2) NOT NULL;

--Alter(add column)
ALTER TABLE products
ADD  Discount DECIMAL(5, 2);

--Alter(change datatype) 
ALTER TABLE products
MODIFY discount INT;

--Table Name: cart details
--Create sql for the above table
CREATE TABLE cart (
    Cart_id INTEGER PRIMARY KEY,
    Customer_id INT REFERENCES customers(customer_id),
    Product_id INT REFERENCES products(Product_id),
    Dateadded TIMESTAMP NOT NULL,
    Quantity INT
);

--Insert all values into the table
INSERT INTO cart VALUES (1, 1, 2, TIMESTAMP '2023-09-15 10:30:00.000000', 3);
INSERT INTO cart VALUES (2, 1, 5, TIMESTAMP '2023-09-15 12:15:00.000000', 1);
INSERT INTO cart VALUES (3, 2, 3, TIMESTAMP '2023-09-15 14:45:00.000000', 2);
INSERT INTO cart VALUES (4, 2, 7, TIMESTAMP '2023-09-15 16:20:00.000000', 2);
INSERT INTO cart VALUES (5, 3, 1, TIMESTAMP '2023-09-15 18:00:00.000000', 1);
INSERT INTO cart VALUES (6, 3, 4, TIMESTAMP '2023-09-15 20:30:00.000000', 4);
INSERT INTO cart VALUES (7, 4, 6, TIMESTAMP '2023-09-15 22:45:00.000000', 1);
INSERT INTO cart VALUES (8, 4, 8, TIMESTAMP '2023-09-16 09:15:00.000000', 3);
INSERT INTO cart VALUES (9, 5, 9, TIMESTAMP '2023-09-16 11:00:00.000000', 2);

select * from cart;

--Delete a row from the table
DELETE FROM cart WHERE Cart_id = 4;

--Alter(Drop column) 
ALTER TABLE cart
DROP COLUMN Dateadded;

--Alter(Rename column)
ALTER TABLE cart
RENAME COLUMN Quantity TO Qty;

--Alter(Modify constraint)
ALTER TABLE cart
MODIFY Qty INTEGER NOT NULL;


--Alter(add column)
ALTER TABLE cart
ADD Total_price DECIMAL(10, 2);

--Alter(change datatype,) 
ALTER TABLE cart
MODIFY total_price VARCHAR(20);



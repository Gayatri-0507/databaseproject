--Customers Table:
SELECT *
FROM Customers
WHERE customer_id IN (
    SELECT customer_id
    FROM Orders
);
--CATEGORIES TABLE
SELECT *
FROM categories
WHERE Categoryid IN (
    SELECT DISTINCT Category_id
    FROM Products
    WHERE Price > 0
);

--Promotions Table:
SELECT *
FROM Promotions
WHERE discountpercentage > 20;

--PaymentMethods Table:
SELECT *
FROM paymentmethods
WHERE paymentmethodid IN (
    SELECT paymentmethodid
    FROM Orders
    WHERE paymentmethodname = 'Credit Card'
);


--Brands Table:
SELECT *
FROM Products
WHERE Brand_id = (
    SELECT Brand_id
    FROM Brands
    WHERE Brand_name = 'Nike'
);

--Addresses Table:
SELECT *
FROM Customers
WHERE customer_id IN (
    SELECT customerid
    FROM Addresses
    WHERE city = 'Cityville'
);

--Orders Table:
SELECT *
FROM Orders
WHERE total_amount > (
    SELECT AVG(total_amount)
    FROM Orders
);


--Cart Table:
SELECT *
FROM Cart
WHERE customer_id IN (
    SELECT customer_id
    FROM Customers
);

--Refunds Table:
SELECT *
FROM Refunds
WHERE Reason IN (
    SELECT Reason
    FROM Refunds
    WHERE Reason = 'Received wrong size'
);


--Transactions Table:
SELECT *
FROM Transactions
WHERE Status IN (
    SELECT Status
    FROM Transactions
    WHERE Status = 'Completed'
);


--Products Table:
SELECT *
FROM Products
WHERE Category_id IN (
    SELECT category_id
    FROM products
    WHERE product_id=3
);


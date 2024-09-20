--Table 1: Transactions Table 2: Refunds
--Left join
SELECT *
FROM Refunds
LEFT JOIN Transactions ON Refunds.order_id = Transactions.order_id;


--Right join 
SELECT *
FROM Transactions
RIGHT JOIN Refunds ON Transactions.order_id = Refunds.order_id;

--Full outer join
SELECT *
FROM Refunds
FULL OUTER JOIN Transactions ON Refunds.order_id = Transactions.order_id;

--Table 1: Brands Table 2: Promotions
--Left join
SELECT *
FROM Brands
LEFT JOIN Promotions ON Brands.Brand_id = promotions.promotionid;

--Right join 
SELECT *
FROM Promotions
RIGHT JOIN Brands ON promotions.promotionid = Brands.Brand_id;

--Full outer join
SELECT *
FROM Brands
FULL OUTER JOIN Promotions ON Brands.Brand_id = promotions.promotionid;


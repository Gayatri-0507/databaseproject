CREATE OR REPLACE VIEW PaymentMethods_View AS
SELECT *
FROM paymentmethods
WHERE paymentmethodid <= 5; -- Filtering to include payment methods with IDs less than or equal to 5

select * from paymentmethods_view;

CREATE OR REPLACE VIEW Male_Customers_View AS
SELECT *
FROM customers
WHERE Gender = 'Male';

select * from male_customers_view;
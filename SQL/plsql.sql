CREATE OR REPLACE FUNCTION GetPaymentMethodDescription(
    p_paymentmethodid IN NUMBER
) RETURN VARCHAR2
IS
    v_description VARCHAR2(100);
BEGIN
    -- Retrieve the description based on the payment method ID
    SELECT description INTO v_description
    FROM paymentmethods
    WHERE paymentmethodid = p_paymentmethodid;

    RETURN v_description;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Payment method not found';
    WHEN OTHERS THEN
        RETURN 'Error: ' || SQLERRM;
END GetPaymentMethodDescription;
/

DECLARE
    payment_method_id_to_query NUMBER := 3;
    description VARCHAR2(100);
BEGIN
    description := GetPaymentMethodDescription(payment_method_id_to_query);
    DBMS_OUTPUT.PUT_LINE('Description: ' || description);
END;
/




set SERVEROUTPUT on;
CREATE OR REPLACE PROCEDURE Count_Male_Customers AS
    v_customer_count NUMBER;
BEGIN
    -- Count the number of male customers
    SELECT COUNT(*) INTO v_customer_count FROM customers WHERE Gender = 'Male';
    DBMS_OUTPUT.PUT_LINE('Number of Male Customers: ' || v_customer_count);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/
EXECUTE count_male_customers;

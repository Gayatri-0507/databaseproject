--CURSOR FOR CUSTOMER TABLE
DECLARE
    CURSOR c1 IS
        SELECT customer_id, customer_name, customer_address FROM customers;

    rec c1%ROWTYPE;
BEGIN
    OPEN c1;
    LOOP
        FETCH c1 INTO rec;
        EXIT WHEN c1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Customer ID: ' || rec.customer_id || ', Name: ' || rec.customer_name || ', Address: ' || rec.customer_address);
    END LOOP;
    CLOSE c1;
END;
/
SET SERVEROUTPUT ON;
DECLARE
  CURSOR c_addresses IS SELECT * FROM addresses WHERE states = 'CA';
BEGIN
  FOR address IN c_addresses LOOP
    DBMS_OUTPUT.PUT_LINE('Address ID: ' || address.Addressid || ', Customer ID: ' || address.customerid);
  END LOOP;
END;
/

--TRIGGER FOR categories TABLE
CREATE OR REPLACE TRIGGER Set_Default_Category
BEFORE INSERT ON categories
FOR EACH ROW
BEGIN
    IF :NEW.description IS NULL THEN
        :NEW.description := 'Default description';
    END IF;
END;
/
-- trigger on products
CREATE OR REPLACE TRIGGER Check_Refund_Date
BEFORE INSERT OR UPDATE ON products
FOR EACH ROW
BEGIN
    IF (:NEW.Refund_date < SYSDATE) THEN
        RAISE_APPLICATION_ERROR(-20001, 'Refund date cannot be in the past');
    END IF;
END;
/

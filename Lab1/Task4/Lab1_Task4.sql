DECLARE
    find_data VARCHAR2 (20);
BEGIN
    SELECT city INTO find_data
    FROM cust WHERE city = 'Paris';
EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Data not found');
END;
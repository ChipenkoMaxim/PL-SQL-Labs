DECLARE
    max_data VARCHAR2 (20);
BEGIN
    SELECT MAX(odate) INTO max_data
    FROM ord;
    DBMS_OUTPUT.PUT_LINE(max_data);
END;

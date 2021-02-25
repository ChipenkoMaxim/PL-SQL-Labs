DECLARE
    raiting_less_than_200 EXCEPTION;
    line VARCHAR2 (20);   
BEGIN
    SELECT count(*) INTO line FROM cust
    WHERE rating = 100;

    IF line > 0 THEN
        RAISE raiting_less_than_200;
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Data not found');
    WHEN raiting_less_than_200 THEN
        DBMS_OUTPUT.PUT_LINE('Raiting less than 200');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Not expected error');
END;
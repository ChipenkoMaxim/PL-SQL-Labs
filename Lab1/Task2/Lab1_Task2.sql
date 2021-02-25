DROP TABLE n_sal;
CREATE TABLE n_sal(
    text VARCHAR2 (20),
    cnt VARCHAR2 (20)
);
DECLARE
    town VARCHAR2(20);
    count_sal VARCHAR2(20);
    counter VARCHAR2(20);
BEGIN
    town:='San Jose';
    FOR counter IN 0..1 LOOP
        SELECT count(*) INTO count_sal
        FROM sal WHERE city = town;
        IF count_sal > 0 THEN
            INSERT INTO n_sal
               VALUES('In '||town, count_sal);
            COMMIT;
     ELSE
            INSERT INTO n_sal
               VALUES('In '||town, 'No data');
            COMMIT;
     END IF;
     town := 'Paris';
    END LOOP;
END;
/
SELECT * FROM n_sal;        
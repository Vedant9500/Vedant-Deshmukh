DECLARE
v_increase NUMBER := 2.10;  
BEGIN
FOR rec IN (SELECT pid, price FROM product WHERE price < 5000) LOOP
UPDATE product
SET price = rec.price * v_increase
WHERE pid = rec.pid;
END LOOP;

COMMIT;

DBMS_OUTPUT.PUT_LINE('Prices updated.');
END;
/

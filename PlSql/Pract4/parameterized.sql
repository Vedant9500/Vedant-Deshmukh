declare
cursor price_cursor(p_min_price NUMBER) is select pid, pname, price from product where price > p_min_price;
v_id    product.pid%TYPE;
v_name  product.pname%TYPE;
v_price product.price%TYPE;
v_min_price NUMBER;
begin
v_min_price := &min_price;

open price_cursor(v_min_price);
loop
fetch price_cursor into v_id, v_name, v_price; 
exit when price_cursor%NOTFOUND;
DBMS_OUTPUT.PUT_LINE('ID: ' || v_id || ', Name: ' || v_name || ', Price: ' || v_price);
end loop;
close price_cursor;
end;
/

declare
p_price product.price%type;
begin
select price into p_price from product where pid=101;
if sql%found then
dbms_output.put_line('Price fetched:'||p_price);
else
dbms_output.put_line('Product not found.');
end if;
end;
/

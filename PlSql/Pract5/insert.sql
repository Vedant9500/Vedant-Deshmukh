create or replace trigger insertmaster
after insert on clientmaster
for each row
BEGIN
insert into insertbackup (srno, name) values (:new.srno, :new.name);
END;
/

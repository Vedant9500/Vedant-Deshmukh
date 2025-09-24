declare
gr VARCHAR2(20);
brgin
FOR rec IN (SELECT roll_no, name, total_mark FROM student_mark) LOOP
proc_grade(rec.roll_no, rec.total_mark, gr);
DBMS_OUTPUT.PUT_LINE(rec.roll_no || ' ' || rec.name || ' ' || gr);
insert into student_result(roll_no, name, grade) values (rec.roll_no, rec.name, gr);
DBMS_OUTPUT.PUT_LINE('One record inserted');
END LOOP;
END;
/

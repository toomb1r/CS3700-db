DECLARE  
   total_rows number(2); 
BEGIN 
   UPDATE EMPLOYEE
   SET EMP_SCH_HOURS = EMP_SCH_HOURS  + 5; 
   IF sql%notfound THEN 
      dbms_output.put_line('no employees selected'); 
   ELSIF sql%found THEN 
      total_rows := sql%rowcount;
      dbms_output.put_line( total_rows || ' employees selected '); 
   END IF;  
END;


--this updates the amount of scheduled hours for an employee

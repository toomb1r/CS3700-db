DECLARE
 CURSOR cur_emp IS 
 SELECT emp_first, emp_last FROM employee
 WHERE emp_id <20;
BEGIN
  FOR L_IDX IN cur_emp
  LOOP
    DBMS_OUTPUT.PUT_LINE(L_IDX.emp_first||' '||L_IDX.emp_last);
  END LOOP;
END;
	


--creates a loop which displays the first and last name of the employees with an emp_id under 2-

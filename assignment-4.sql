-- Display the short description of employees table. 
DESC EMPLOYEES;


--Display unique salary values from employee tables. 
SELECT UNIQUE SALARY FROM EMPLOYEES;


--Display unique last name values from employees table. 
SELECT UNIQUE LAST_NAME FROM EMPLOYEES;


--Display records of employees whose department_id ‘90’
SELECT * FROM EMPLOYEES
WHERE EMPLOYEE_ID = 90;


--Display records of employees where salary less than 5000 and their job_id is ‘SA_MAN’.
SELECT * FROM EMPLOYEES
WHERE SALARY < 5000 
AND JOB_ID = 'SA_MAN';


--Display records of employees where hire_date is in a range of ‘01/06/2003’ to ‘01/06/2006’.
SELECT * FROM EMPLOYEES
WHERE HIRE_DATE  BETWEEN '01/06/03' AND '01/06/06';


--Find records of employees where job_id’s are ‘SA_MAN, SA_REP and IT_PROG’ 
SELECT * FROM EMPLOYEES
WHERE JOB_ID IN ('SA_MAN','SA_REP','IT_PROG');


--Find records of employees where department_id not in ’90, 60, 50’ .
SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID <> 90 AND DEPARTMENT_ID <> 60 AND DEPARTMENT_ID <> 50; 


--Sort departments table according to department_name column in descending form 
SELECT DEPARTMENT_NAME FROM DEPARTMENTS ORDER BY  DEPARTMENT_NAME DESC;
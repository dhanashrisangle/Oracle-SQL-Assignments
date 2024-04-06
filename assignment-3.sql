--Concate Street_address,postalcode,city with ‘,’ from location table. 
SELECT STREET_ADDRESS||','||POSTAL_CODE||','||CITY FROM locations;


/*Select first_name, last_name  and dep_id from employees and concate f_name and last_name with space. 
Use below literal. 
Ex steven king ‘has a department id is’ */
SELECT first_name||' '||LAST_NAME||'HAS A DEPARTMENT ID IS'||DEPARTMENT_ID FROM employees;

SELECT * FROM employees;


--My first name is  steven 	and I am from ‘IT_PROG’ department. 
SELECT 'MY FIRST NAME IS ' ||FIRST_NAME||'AND I AM FROM '||JOB_ID FROM EMPLOYEES;


--Show structure of departments table. Select all data                from table. 
DESC departments;
SELECT * FROM departments;


/*Show table data like (job_title ) ’salary is ‘ max_salary  
ex: President salary is 40000 */
SELECT JOB_ID||' SALARY IS ' ||SALARY FROM employees;


--location id, street address, postal code, city  give alias name  full address and concate all coloumn with ‘,’ 
SELECT LOCATION_ID||','||STREET_ADDRESS||','||POSTAL_CODE||','||CITY AS FULL_ADDRESS FROM locations;



--Eliminate duplicate rows of job_id. 
SELECT DISTINCT JOB_ID FROM employees;


/* Display the name of all employees whose DEPARTMENT ID is 60, 110,80,90 with STATEMENT 
{Department id of (NAME) is (DEPARTMENT ID)}  */
SELECT 'DEPARTMENT ID OF ' || FIRST_NAME||' IS '||
DEPARTMENT_ID FROM employees
WHERE DEPARTMENT_ID = 60 OR
DEPARTMENT_ID = 110 OR
DEPARTMENT_ID = 80 OR
DEPARTMENT_ID = 90;


--Write a query for increment of salary by 5000 of EMPLOYEE ID 170,175,180. 
UPDATE employees 
SET SALARY = SALARY + 5000
WHERE EMPLOYEE_ID = 170 OR
EMPLOYEE_ID = 175 OR
EMPLOYEE_ID = 180;


--Display STATEMENT: {(FULL NAME) is working in (job_id) with (employee_id).} 
SELECT FIRST_NAME||LAST_NAME||' IS WORKING IN '||JOB_ID||' WITH '||EMPLOYEE_ID FROM employees;


/* Write a query for Employees, who are working as PU CLEARK, ST CLEARK, SH CLEARK Having 
salary between 5000 and 15000 */
SELECT * FROM EMPLOYEES
WHERE JOB_ID IN ('PU CLEARK','ST CLEARK','SH CLEAEK')
AND SALARY BETWEEN 5000 AND 15000;


--Display employees FULL NAME who NOT having {department Id = 80} 
SELECT FIRST_NAME||' ' || LAST_NAME
FROM EMPLOYEES
WHERE department_id != 80;

--Write a query to decrement the salary by 3000 of Employee id 201,204,205. 
UPDATE employees
SET SALARY = SALARY - 3000
WHERE employee_id = 201 OR employee_id =204 OR employee_id = 205;


SELECT * FROM employees;



/* Write a query for employees whose salary are greater than or equal to 1000 and job id having 'CLEARK'
at the end.   */
SELECT * FROM EMPLOYEES 
WHERE SALARY >= 1000 
AND JOB_ID LIKE '%CLERK';


--Write a query to get the employee id, first_name and last_name for those employees do not earn any commission. 
SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME FROM EMPLOYEES
WHERE COMMISSION_PCT IS NULL ; 


/*  Display full name,job id, salary of employee from IT_PROG and SA_REP department whose 
salary between 2000 and 15000 and display their annual salary. */
SELECT FIRST_NAME,LAST_NAME,JOB_ID,SALARY,SALARY*12 AS ANNUAL_SALARY FROM EMPLOYEES
WHERE JOB_ID IN ('IT_PROG','SA_REP')
AND salary BETWEEN 2000 AND 15000;


--Display full name of employee and print the list in descending whose email id start with J . 
SELECT FIRST_NAME,LAST_NAME,EMAIL FROM EMPLOYEES
WHERE EMAIL LIKE 'J%'
ORDER BY EMAIL DESC ;

--Display the name of employee who hired in march and their job is SA_REP and manager id is 146,147,148. 
SELECT FIRST_NAME FROM employees
WHERE JOB_ID = 'SA_REP' AND 
HIRE_DATE LIKE '%-03-%'
AND manager_id IN(146,147,148);


/*  write a query to display employee name and hire date ,give any alias 
.(Use the literal—myself(emp_name), I hired on(hire_date).  */
SELECT 'MYSELF ' || FIRST_NAME ||' ,I HIRED ON ' || HIRE_DATE FROM EMPLOYEES ;


--display all employee whose MANAGER_ID is greater than 103 with having last digit of PHONE_NUMBER is 6 
SELECT * FROM EMPLOYEES
WHERE MANAGER_ID > 103
AND PHONE_NUMBER LIKE '%6';


--Display all records who have john, 'Alexander'any         where in name column. 
SELECT * FROM EMPLOYEES 
WHERE FIRST_NAME IN('JOHN','ALEXANDER') OR LAST_NAME IN ('JOHN','ALEXANDER');
 

 
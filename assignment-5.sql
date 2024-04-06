--Write a query to list the number of jobs available in the employee's table.
SELECT COUNT(job_id)
FROM EMPLOYEES;
 

--Write a query to get the total salaries payable to employees.
SELECT SUM(SALARY)
FROM EMPLOYEES;



--Write a query to get the maximum salary of an employee working as a Programmer.
SELECT MAX(SALARY) 
FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG';


SELECT * FROM EMPLOYEES;


--Write a query to get the average salary and number of employees working the department 90
SELECT AVG(SALARY),COUNT(*)
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 90;



--  Write a query to get the difference between the highest and lowest salaries.
SELECT MAX(SALARY)-MIN(SALARY)
FROM EMPLOYEES;



--Write a query to get the average salary for each job ID excluding programmer.
SELECT AVG(SALARY)
FROM EMPLOYEES
WHERE JOB_ID NOT IN ('IT_PROG');


/*Write a query to get the total salary, maximum, minimum, average salary of employees (job ID wise),
for department ID 90 only.  */
SELECT SUM(SALARY),MAX(SALARY),MIN(SALARY),AVG(SALARY),job_id
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 90
GROUP BY JOB_ID;



--Write a query to get the average salary for all departments employing more than 10 employees.
SELECT AVG(SALARY),DEPARTMENT_ID
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING COUNT(*) > 10;

     
     
/*  Write a SQL query to count the number of employees in each  department. Return department code
and number of employees   */
SELECT COUNT(*),DEPARTMENT_ID
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;


SELECT * FROM EMPLOYEES;    

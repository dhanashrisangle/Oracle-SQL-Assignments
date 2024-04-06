/*  write a SQL query to list the employees’ name, increased their salary by 15%, 
and expressed as number of Dollars{($ salary)($24000)}.  */
SELECT FIRST_NAME || '$' ||
ROUND(SALARY * 1.15)
FROM EMPLOYEES;


/*  write a SQL query to find those employees with hire date in the format like
February 22, 1991. Return employee ID, employee name, salary, hire date.  */
SELECT EMPLOYEE_ID,FIRST_NAME,SALARY,HIRE_DATE,
TO_CHAR(HIRE_DATE,'FM  MONTH DD YYYY')
FROM EMPLOYEES;


/*  write a SQL query to count the number of characters except the spaces for 
each employee name. Return employee name length.   */
SELECT FIRST_NAME,
LENGTH(FIRST_NAME)
FROM EMPLOYEES;


/*From the following table, write a SQL query to identify those employees whose salaries exceed 3000
after receiving a 25% salary increase. Return complete information about the employees.  */
SELECT * FROM EMPLOYEES
WHERE ROUND(SALARY * 1.30) > 3000;


/*write a SQL query to find out which employees joined in the month of January.
Return complete information about the employees.  */
SELECT * FROM EMPLOYEES
WHERE EXTRACT(MONTH FROM HIRE_DATE) = 1;


/*write a SQL query to find those employees who joined in any month, but the name of the 
month contain the character ‘A’ in second position. Return complete information about the employees.  */
SELECT * FROM EMPLOYEES
WHERE EXTRACT(MONTH FROM HIRE_DATE)=1 OR
EXTRACT(MONTH FROM HIRE_DATE)=3 OR
EXTRACT(MONTH FROM HIRE_DATE)=5;


/*write a SQL query to find those employees whose name ends with 'S' and six characters long. 
Return complete information about the employees.  */
SELECT * FROM EMPLOYEES
WHERE LENGTH(FIRST_NAME)=6 AND 
SUBSTR(FIRST_NAME,6,1) = 'S' ;



--write a SQL query to find those employees who joined in 90's. Return complete information about the employees.
SELECT * FROM EMPLOYEES
WHERE EXTRACT(YEAR FROM HIRE_DATE)
BETWEEN '1990' AND '1999';



--write a SQL query to calculate total purchase amount of all orders.
SELECT SUM(PRICE)
FROM PURCHASE_TABLE;





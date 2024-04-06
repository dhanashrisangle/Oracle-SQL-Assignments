--Write an SQL query to fetch “FIRST_NAME” from Employee table in upper case.
SELECT UPPER(FIRST_NAME)
FROM EMPLOYEES;

--Write an SQL query to fetch “LAST_NAME” from Employee table in INITCAP case.
SELECT INITCAP(LAST_NAME)
FROM EMPLOYEES;


--Write an SQL query to fetch “JOB_ID” from Employee table in lower case.
SELECT LOWER(JOB_ID),JOB_ID
FROM EMPLOYEES;


--Write an SQL query to print the first three characters of  FIRST_NAME from Employee table.
SELECT SUBSTR(FIRST_NAME,1,2),FIRST_NAME
FROM EMPLOYEES;


/*  Write an SQL query to find the position of the alphabet (‘a’) in the first name 
column ‘Alexander’ from employee table.   */
SELECT INSTR(FIRST_NAME,'A'),FIRST_NAME
FROM EMPLOYEES;


--an SQL query that fetches the unique values of Commission_pct from Employee Write's table and prints its length.
SELECT UNIQUE(COMMISSION_PCT),LENGTH(COMMISSION_PCT)
FROM EMPLOYEES;

/*  Write an SQL query to print all EmployeeEmployees table order by FIRST_NAME Ascending and
DEPARTMENT_ID Descending.   */
SELECT * FROM EMPLOYEES
ORDER BY FIRST_NAME ASC,
DEPARTMENT_ID DESC;


--'www.3ritech.com' remove'www'string from left side.
SELECT LTRIM('www.3ritech.com','W')
FROM DUAL;


-- 'www.3ritech.com' remove'.com'string from right side.
SELECT RTRIM('www.3ritech.com','.COM')
FROM DUAL;

-- Add  5 ‘@’ character from starting position or leftside of string.
SELECT LPAD('ABC',8,'@')
FROM DUAL;

-- Add  5 ‘@’ character fromending position or rightside of string.
SELECT RPAD('ABC',8,'@')
FROM DUAL;


-- add _ from leftside of 'sqltutorials'
SELECT LPAD('sqltutorials',13,'_')
FROM DUAL;


-- add $ from rightside of 'sqlttorials'
SELECT RPAD('sqlttorials',12,'_')
FROM DUAL;


--both side add 3 ‘&’ to first_name column of employees table &&&(first_name)&&& from employees.
SELECT LPAD(RPAD(FIRST_NAME,LENGTH(FIRST_NAME)+3,'&'),
LENGTH(FIRST_NAME)+6,'&')
FROM EMPLOYEES;


--Replace s with ‘$’ from “sqltutorials”
SELECT REPLACE('sqltutorials','S','$')
FROM DUAL;


--Replace ‘a with ‘@’ in first_name of employees.
SELECT REPLACE(FIRST_NAME,'A','@'),FIRST_NAME
FROM EMPLOYEES;



--Reverse last_name of  employees.
SELECT REVERSE(LAST_NAME),LAST_NAME
FROM EMPLOYEES;

/*   Combine first_name and last_name with space and then display only last_name. 
     [help—use following fun Substr,instr,concate]   */
SELECT CONCAT(FIRST_NAME,CONCAT(' ',LAST_NAME))AS FULLNAME,
SUBSTR(CONCAT(CONCAT(FIRST_NAME,' '),LAST_NAME),
INSTR(CONCAT(CONCAT(FIRST_NAME,' '),LAST_NAME),' ')+1) 
FROM EMPLOYEES;



-- 2345.67895643 round it 3
SELECT ROUND(2345.67895643,3)
FROM DUAL;



--234567895643 trunc it 3
SELECT TRUNC(234567895643,3)
FROM DUAL;



--find mod of 56 % 3 
SELECT MOD(56,3)
FROM DUAL;



--reverse "programming_language"
SELECT REVERSE('programming_language')
FROM DUAL;


--add 3 '&' char to starting of 'sql'
SELECT LPAD('SQL',6,'&')
FROM DUAL;



-- from 'sql'add both side 3'#'   "###sql###"
SELECT LPAD(RPAD('SQL',6,'#'),9,'#')
FROM DUAL;



--remove ###$$$ from "###$$$sqlprograming$$$$####
SELECT LTRIM('###$$$sqlprograming$$$$####','#S')
FROM DUAL;

 



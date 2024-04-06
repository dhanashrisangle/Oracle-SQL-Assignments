--Create table employ_details (id int ,name varchar(30),age number(3),address varchar(20),salary float). 
CREATE TABLE EMPLOY_DETAILS(ID INT,NAME VARCHAR(30),AGE NUMBER(3),ADDRESS VARCHAR(20),SALARY FLOAT);


/*Insert the record as below in employ_details table. 
ID | NAME     | AGE | ADDRESS   | SALARY   | 

+----+----------+-----+-----------+----------+ 

|  1 | Ramesh   |  32 | Ahmedabad |  2000.00 | 

|  2 | Khilan   |  25 | Delhi     |  1500.00 | 

|  3 | kaushik  |  23 | Kota      |  2000.00 | 

|  4 | Chaitali |  25 | Mumbai    |  6500.00 | 

|  5 | Hardik   |  27 | Bhopal    |  8500.00 | 

|  6 | Komal    |  22 | MP        |  4500.00 | 

|  7 | Muffy    |  24 | Indore    | 10000.00 | 
*/
INSERT INTO employ_details 
VALUES
(1,'RAMESH',32,'Ahmedabad',2000.00);

INSERT INTO employ_details 
VALUES
(2,'Khilan',25,'Delhi',1500.00);


INSERT INTO employ_details 
VALUES
(3,'kaushik',23,'Kota',2000.00);


INSERT INTO employ_details 
VALUES
(4,'Chaitali',25,'Mumbai',6500.00);


INSERT INTO employ_details 
VALUES
(5,'Hardik',27,'Bhopal',8500.00);


INSERT INTO employ_details 
VALUES
(6,'Komal',22,'MP',4500.00);

INSERT INTO employ_details
VALUES
(7,'Muffy',24,'Indore',10000.00);


SELECT * FROM employ_details;


--Update salary and age from employ_details whose id is 6. 
UPDATE employ_details 
SET SALARY = 60000,AGE = 35
WHERE  ID = 6;


--Delete info of employ from employ_details whose name is ‘Hardik’. 
DELETE FROM employ_details
WHERE ID = '5';


--Update address of employ to ‘pune’ whose existing address is ‘mumbai’ and ‘MP’. 
UPDATE  EMPLOY_DETAILS 
SET ADDRESS = 'PUNE'
WHERE ID = 4 OR ID = 6;


--Give 1000 bonus to employees whose id is 4 and 7. 
UPDATE employ_details 
SET SALARY = SALARY + 1000
WHERE ID = 4 OR ID = 7;


--Display name ,age  and salary from employ_details . 
SELECT NAME,AGE,SALARY FROM employ_details;


--Concate name ,age and address of employees and display with alias name Full_information . 
SELECT NAME||AGE||ADDRESS AS FULL_INFORMATION FROM employ_details;


--Display name and salary of employees by using literals ‘ salary is ’.  
SELECT NAME||'SALARY IS'||SALARY FROM employ_details;
 

--Display distinct name from employ_details.
SELECT DISTINCT NAME FROM employ_details; 
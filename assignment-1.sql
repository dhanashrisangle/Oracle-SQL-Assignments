--Create table customer (customer_name char(20), customer_street char(30), customer_city char(30)). 
create table customer (customer_name char(20), customer_street char(30), customer_city char(30));
 
 
--Add new columns in customer table that is	 (phone_number Number(10) and country char(20)).  
alter table customer add(phone_number number(10), country char(20));


--Rename column name phone_number to mobile. 
alter table customer rename column phone_nunmber to mobile;
 
 
--create table branch(branch_name char(15), branch_city char(30)). 
create table branch(branch_name char(15),branch_city char(30)); 


--Modify column name branch_name datatype to varchar(20). 
alter table branch modify(branch_name varchar(20));


--Insert three records in customer table. 
INSERT INTO CUSTOMER 
VALUES
('Abhi','MIRA_ROAD','DELHI',9851525746,'INDIA');


INSERT INTO CUSTOMER 
VALUES
('RAJ','SHIVAJI_PARK','MUMBAI',8563525746,'INDIA');


INSERT INTO CUSTOMER 
VALUES
('BILLY','XYZ','GLASSGOW',2235486512,'UK');


SELECT * FROM CUSTOMER;


--create new table cust_info from existing table customer. 
CREATE TABLE CUST_INFO AS SELECT * FROM CUSTOMER;


--truncate data from cust_info. 
TRUNCATE TABLE CUST_INFO;


--show full description of table customer and branch. 
DESC CUSTOMER;
DESC BRANCH;


--insert data in cust_info from existing table customer. 
INSERT INTO cust_info(CUSTOMER_NAME,CUSTOMER_STREET,CUSTOMER_CITY,MOBILE,COUNTRY)SELECT 
CUSTOMER_NAME,CUSTOMER_STREET,CUSTOMER_CITY,MOBILE,COUNTRY FROM CUSTOMER;


SELECT * FROM cust_info;

SELECT * FROM BRANCH;


--insert 5 records into branch. 
INSERT INTO BRANCH 
VALUES
('A','PUNE');


INSERT INTO BRANCH 
VALUES
('ABCD','PUNE');


INSERT INTO BRANCH 
VALUES
('PQRS','MUMBAI');


INSERT INTO BRANCH 
VALUES
('WXYZ','DELHI');


--Rename branch table to branch_info. 
ALTER TABLE BRANCH RENAME TO BRANCH_INFO;


SELECT * FROM BRANCH_INFO;



 
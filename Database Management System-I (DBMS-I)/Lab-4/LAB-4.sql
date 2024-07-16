--Alter Operation

--Part – A:

--Use Deposit table of lab-1.

--From the above given tables perform the following queries (ALTER Operation):

--1. Add two more columns City VARCHAR (20) and Pincode INT.
	Alter table DEPOSIT Add CITY VARCHAR(20),PINCODE INT;
		select * from DEPOSIT;

--2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
	alter table DEPOSIT alter column CNAME VARCHAR(35);
		select * from DEPOSIT;

--3. Change the data type DECIMAL to INT in amount Column.
	Alter table DEPOSIT alter column AMOUNT INT;
		select * from DEPOSIT;

--4. Rename Column ActNo to ANO.
	 exec SP_RENAME 'DEPOSIT_DETAIL.ACTNO' , 'ANO';
		select * from DEPOSIT;

--5. Delete Column City from the DEPOSIT table.
	Alter table DEPOSIT Drop column CITY;
		select * from DEPOSIT;

--6. Change name of table DEPOSIT to DEPOSIT_DETAIL.
	exec SP_RENAME 'DEPOSIT' , 'DEPOSIT_DETAIL';
		select * from DEPOSIT_DETAIL;

--Part – B:
--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
	exec SP_RENAME 'DEPOSIT_DETAIL.ADATE','AOPENDATE';
		select * from DEPOSIT_DETAIL;

--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
	Alter table DEPOSIT_DETAIL drop column AOPENDATE;
		select * from DEPOSIT_DETAIL;

--3. Rename Column CNAME to CustomerName.	exec SP_RENAME 'DEPOSIT_DETAIL.CNAME','CUSTOMERNAME';	 select * from DEPOSIT_DETAIL;--Part – C: --From the above given tables perform the following queries (ALTER Operation): 

	CREATE TABLE STUDENT_DETAIL(
		Enrollment_No VARCHAR(20),
		Name varchar(25),
		CPI Decimal(5,2),
		Birthday Datetime
	);
	SELECT * FROM STUDENT_DETAIL;


--1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null). 
	ALTER table STUDENT_DETAIL add City varchar(20) not null , Backlog INT null;
		select * from STUDENT_DETAIL;

--2. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35). 
	alter table STUDENT_DETAIL alter column Name varchar(35);

--3. Change the data type DECIMAL to INT in CPI Column.
	alter table STUDENT_DETAIL alter column CPI INT;

--4. Rename Column Enrollment_No to ENO. 
	exec SP_RENAME 'STUDENT_DETAIL.Enrollment_No','ENO';

--5. Delete Column City from the student_detail table.
	alter table STUDENT_DETAIL drop column City;

--6. Change name of table student_detail to STUDENT_MASTER. 	exec SP_RENAME 'STUDENT_DETAIL','STUDENT_MASTER';--DELETE, Truncate, Drop Operation

--Part – A:

--Use Deposit_Detail table (Altered table of DEPOSIT)

--1. Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000. 
	Delete from DEPOSIT_DETAIL where AMOUNT>=4000;
		select * from DEPOSIT_DETAIL;

--2. Delete all the accounts CHANDI BRANCH.
	Delete from DEPOSIT_DETAIL where BNAME='CHANDI';
		select * from DEPOSIT_DETAIL;

--3. Delete all the accounts having account number (ANO) is greater than 105.
	Delete from DEPOSIT_DETAIL where ANO>105;
		select * from DEPOSIT_DETAIL;

--4. Delete all the records of Deposit_Detail table. (Use Truncate)
	Truncate table DEPOSIT_DETAIL;
		select * from DEPOSIT_DETAIL;

--5. Remove Deposit_Detail table. (Use Drop)
	Drop table DEPOSIT_DETAIL;
		select * from DEPOSIT_DETAIL;

--Part – B:

--Create following table using query according to the definition.

	CREATE TABLE EMPLOYEE_MASTER(
		EmpNo INT,
		EmpName Varchar(25),
		JoiningDate Datetime,
		Salary Decimal(8,2),
		City Varchar(20)
	);
	select * from EMPLOYEE_MASTER;

--Insert the following records in the EMPLOYEE_MASTER table. 

	insert into EMPLOYEE_MASTER 
	values
	(101,'Keyur','2002-01-05',12000,'Rajkot'),
	(102,'Hardik','2004-02-15',14000,'Ahmedabad'),
	(103,'Kajal','2006-03-14',15000,'Baroda'),
	(104,'Bhoomi','2005-06-23',12500,'Ahmedabad'),
	(105,'Harmit','2004-02-15',14000,'Rajkot'),
	(106,'Mitesh','2001-09-25',5000,'Jamnagar'),
	(107,'Meera',Null,7000,'Morbi'),
	(108,'Kishan','2003-02-06',10000,NULL)

--From the above given tables perform the following queries (DELETE Operation): 

--1. Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.  
	delete from EMPLOYEE_MASTER where Salary>=14000;

--2. Delete all the Employees who belongs to ‘RAJKOT’ city. 
	delete from EMPLOYEE_MASTER where City='Rajkot';

--3. Delete all the Employees who joined after 1-1-2007. 
	delete from EMPLOYEE_MASTER where JoiningDate>'2007-01-01';

--4. Delete the records of Employees whose joining date is null and Name is not null. 
	delete from EMPLOYEE_MASTER where JoiningDate is NUll and EmpName!='NULL';

--5. Delete the records of Employees whose salary is 50% of 20000. 
	delete from EMPLOYEE_MASTER where Salary=(0.5*20000);

--6. Delete the records of Employees whose City Name is not empty.
	delete from EMPLOYEE_MASTER where City='Null';

--7. Delete all the records of Employee_MASTER table. (Use Truncate) 
	Truncate table EMPLOYEE_MASTER;

--8. Remove Employee_MASTER table. (Use Drop)
	Drop table EMPLOYEE_MASTER;
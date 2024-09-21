--Math functions 
--Part – A: 
--1. Display the result of 5 multiply by 30.
	select 
		ABS(5*30);

--2. Find out the absolute value of -25, 25, -50 and 50. 
	select 
		ABS(-25),
		ABS(25),
		ABS(-50),
		ABS(50);

--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
	select 
		ceiling(25.2),
		ceiling(25.7),
		ceiling(-25.2);

--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
	select 
		floor(25.2),
		floor(25.7),
		floor(-25.2);

--5. Find out remainder of 5 divided 2 and 5 divided by 3. 
	select 
		ABS(5%2) , 
		ABS(5%3);

--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power. 
	select 
		POWER(3,2) , 
		POWER(4,3);

--7. Find out the square root of 25, 30 and 50. 
	select 
		SQRT(25) , 
		SQRT(30) , 
		SQRT(50);

--8. Find out the square of 5, 15, and 25.
	select 
		SQUARE(5) , 
		SQUARE(15) , 
		SQUARE(25);

--9. Find out the value of PI. 
	select 
		PI();

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
	select 
		ROUND(157.732,2) , 
		ROUND(157.732,0) , 
		ROUND(157.732,-2);

--11. Find out exponential value of 2 and 3. 
	select 
		Exp(2) , 
		Exp(3);

--12. Find out logarithm having base e of 10 and 2.
	select 
		LOG(10) , 
		LOG(2);

--13. Find out logarithm having base b having value 10 of 5 and 100.
	select 
		LOG10(5) , 
		LOG10(100);

--14. Find sine, cosine and tangent of 3.1415. 
	select 
		SIN(3.1415) , 
		COS(3.1415) , 
		TAN(3.1415);

--15. Find sign of -25, 0 and 25. 
	select 
		SIGN(-25) , 
		SIGN(0) ,
		SIGN(25);

--16. Generate random number using function. 
	select 
		RAND();


--Part – B: 

--Create and Insert the following records in the EMP_MASTER table.
	create table EMP_MASTER (
		EmpNo int,
		EmpName varchar(25),
		JoiningDate date,
		Salary decimal(8,2),
		Commission decimal(8,2),
		City varchar(20),
		DeptCode varchar(20)
	);

	insert into EMP_MASTER values 
	(101,'Keyur','2002-01-05',12000,4500,'Rajkot','3@g'),
	(102,'Hardik','2004-02-15',14000,2500,'Ahmedabad','3@'),
	(103,'Kajal','2006-03-14',15000,3000,'Baroda','3-GD'),
	(104,'Bhoomi','2005-06-23',12500,1000,'Ahmedabad','1A3D'),
	(105,'Harmit','2004-02-15',14000,2000,'Rajkot','312A')

	select * from EMP_MASTER;

--1. Display the result of Salary plus Commission. 
	select 
		ABS( Salary + Commission ) as Result
	from EMP_MASTER;
	
--2. Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2. 
	select 
		ceiling(55.2),
		ceiling(35.7),
		ceiling(-55.2)

--3. Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2. 
	select 
		floor(55.2),
		floor(35.7),
		floor(-55.2)

--4. Find out remainder of 55 divided 2 and 55 divided by 3.
	select
		ABS(55%2),
		ABS(55%3)

--5. Find out value of 23 raised to 2nd power and 14 raised 3rd power.
	select
		POWER(23,2),
		POWER(14,3)

--Part – C: 

--1. Find out the square root of 36, 49 and 81.
	select 
		SQRT(36),
		SQRT(49),
		SQRT(81)

--2. Find out the square of 3, 9, and 12.
	select 
		SQUARE(3),
		SQUARE(9),
		SQUARE(12)

--3. Find out round value of 280.8952 for 2, 0 and -2 decimal points.
	select
		ROUND(280.8952,2),
		ROUND(280.8952,0),
		ROUND(280.8952,-2)

--4. Find sine, cosine and tangent of 4.2014. 
	select
		SIN(4.2014),
		COS(4.2014),
		TAN(4.2014)

--5. Find sign of -55, 0 and 95. 
	select
		SIGN(-55),
		SIGN(0),
		SIGN(95)

--String functions

--Part – A:

--1. Find the length of following. (I) NULL    (II) ‘   hello     ’   (III)  Blank 
	select
		LEN(NULL),
		LEN(  '  hello     '),
		LEN('')

--2. Display your name in lower & upper case. 
	select
		LOWER('Riya'),
		UPPER('Riya')

--3. Display first three characters of your name. 
	select 
		left('Riya',3)

--4. Display 3rd to 10th character of your name. 
	select
		SUBSTRING('RiyaBhimaniiiii',3,10)

--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
	select
		REPLACE('abc123efg','123','XYZ'),
		REPLACE('abcabcabc','c','5')

--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9. 
	select 
		ASCII('a'),
		ASCII('A'),
		ASCII('z'),
		ASCII('Z'),
		ASCII(0),
		ASCII(9)

--7. Write a query to display character based on number 97, 65,122,90,48,57.
	select 
		ASCII(97),
		ASCII(65),
		ASCII(122),
		ASCII(90),
		ASCII(48),
		ASCII(57)

--8. Write a query to remove spaces from left of a given string ‘ hello world  ‘.
	select
		LTRIM(' hello world  ')
		
--9. Write a query to remove spaces from right of a given string ‘ hello world  ‘. 
	select 
		RTRIM(' hello world  ')

--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’.
	select
		SUBSTRING('SQL Server',1,4),
		SUBSTRING('SQL Server',6,10)
	
	select 
		LEFT('SQL Server',4),
		RIGHT('SQL Server',5)

--11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function).
	select 
		CAST(1234.56 as int),
		convert(int , 1234.56)

--12. Write a query to convert a float 10.58 to integer (Use cast and convert function). 
	select
		CAST(10.58 as int),
		CONVERT(int , 10.58)

--13. Put 10 space before your name using function. 
	select 
		SPACE(10)+'Riya'

--14. Combine two strings using + sign as well as CONCAT (). 
	select
		'Riya' + ' ' + 'Bhimani' as fullname;

--15. Find reverse of “Darshan”. 
	select 
		REVERSE('Darshan');

--16. Repeat your name 3 times.
	select
		REPLICATE('Riya' , 3);

--Part – B:

--Perform following queries on Student table of practical no 5. 

--1. Find the length of FirstName and LastName columns.
	select 
		LEN(FirstName) , LEN(LastName)
	from STUDENT;

--2. Display FirstName and LastName columns in lower & upper case. 
	select 
		LOWER(FirstName) as LowerFirstName , UPPER(FirstName) as UpperFirstName , LOWER(LastName) as LowerLastName , Upper(LastName) as UpperLastName
	from STUDENT;

--3. Display first three characters of FirstName column. 
	SELECT
		SUBSTRING(FIRSTNAME , 1 , 3)
	FROM STUDENT;
		
--4. Display 3rd to 10th character of Website column. 
	SELECT 
		SUBSTRING(WEBSITE , 3 , 10)
	FROM STUDENT;

--5. Write a query to display first 4 & Last 5 characters of Website column. 
	SELECT 
		LEFT(WEBSITE , 4) ,
		RIGHT(WEBSITE , 5)
	FROM STUDENT;

--Part – C: 

--Perform following queries on Student table of practical no 5. 

--1. Put 10 space before FirstName using function. 
	SELECT 
		SPACE(10) + FIRSTNAME 
	FROM STUDENT;

--2. Combine FirstName and LastName columns using + sign as well as CONCAT (). 
	SELECT 
		FIRSTNAME +' '+ LASTNAME AS FULL_NAME ,
		CONCAT(FIRSTNAME ,' ', LASTNAME)
	FROM STUDENT;

--3. Combine all columns using + sign as well as CONCAT (). 
	SELECT
		CAST(STUID AS VARCHAR)+' '+ FIRSTNAME +' '+ LASTNAME +' ' + WEBSITE +' '+ CITY +' '+ ADDRESS ,
		CONCAT(CAST(STUID AS VARCHAR) +' '+FIRSTNAME ,' ', LASTNAME , ' ' , WEBSITE , ' ' , CITY ,' ' , ADDRESS)
	FROM STUDENT;

--4. Find reverse of FirstName column. 
	SELECT
		REVERSE(FIRSTNAME) 
	FROM STUDENT;

--5. Repeat FirstName column 3 times 
	SELECT
		REPLICATE(FIRSTNAME , 3)
	FROM STUDENT;

--6. Give the Names which contains 5 characters.
	SELECT
		FIRSTNAME
	FROM STUDENT
	WHERE LEN(FIRSTNAME) = 5;

--7. Combine the result as <FirstName> Lives in <City>. 
	SELECT
		FIRSTNAME +' LIVES IN '+ CITY
	FROM STUDENT;

--8. Combine the result as Student_ID of < FirstName > is <StuID> . 
	SELECT
		'STUDENT_ID OF '+ FIRSTNAME + ' IS' + CAST(STUID AS VARCHAR)
	FROM STUDENT;

 
--Date Functions 

--Part – A: 

--1. Write a query to display the current date & time. Label the column Today_Date.
	select
		GETDATE() as Today_Date;

--2. Write a query to find new date after 365 day with reference to today.
	select 
		DATEADD(d , 365 , GETDATE()) As New_Date;

--3. Display the current date in a format that appears as may 5 1994 12:00AM. 
	select
		CAST ((GETDATE()) as varchar);

--4. Display the current date in a format that appears as 03 Jan 1995. 
	select
		CONCAT_WS(' ' ,DATEPART(day,getdate()),DATENAME(month,getdate()),DATEPART(year,getdate()));

	SELECT
		FORMAT(GETDATE() , 'dd MMM yyyy');

--5. Display the current date in a format that appears as Jan 04, 96. 
	SELECT
		CONCAT(DATENAME(MONTH,GETDATE()),' ',DATEPART(DAY,GETDATE()),',',' ',DATEPART(YEAR,GETDATE()));

--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
	SELECT
		DATEDIFF(MONTH,'31-Dec-08','31-Mar-09');

--7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
	SELECT
		DATEDIFF(YEAR,'14-Sep-10','25-Jan-12');

--8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30. 
	SELECT
		DATEDIFF(HOUR,'25-Jan-12 7:00','26-Jan-12 10:30');

--9. Write a query to extract Day, Month, Year from given date 12-May-16. 
	SELECT
		DAY('12-May-16') ,
		MONTH('12-May-16') ,
		YEAR('12-May-16');

--10. Write a query that adds 5 years to current date. 
	SELECT
		DATEADD(YY , 5 , GETDATE()) As New_Date;
	
--11. Write a query to subtract 2 months from current date.
	SELECT
		DATEADD(M , -2 , GETDATE()) AS NEW_DATE;

--12. Extract month from current date using datename () and datepart () function. 
	SELECT
		DATENAME(MONTH , GETDATE()) ,
		DATEPART(MONTH , GETDATE()) ;

--13. Write a query to find out last date of current month. 
	SELECT
		EOMONTH(GETDATE());

--14. Calculate your age in years and months. 
	SELECT
		DATEDIFF(MONTH , '02-11-2005' , GETDATE()) ,
		DATEDIFF(YEAR , '02-11-2005' , GETDATE());

--Part – B:  

--Create a table EMP_DETAIL and insert the following records in the table.  

--EmpNo EmpName JoiningDate Salary City 
--101 Keyur 15-1-02 12000.00 Rajkot 
--102 Hardik 15-2-04 14000.00 Ahmedabad 
--103 Kajal 14-3-06 15000.00 Baroda 
--104 Bhoomi 23-6-05 12500.00 Ahmedabad 
--105 Harmit 15-2-04 14000.00 Rajkot 
--106 Jay 12-3-07 12000.00 Surat 
--1. Write a query to find new date after 365 day with reference to JoiningDate. 
--2. Display the JoiningDate in a format that appears as may 5 1994 12:00AM. 
--3. Display the JoiningDate in a format that appears as 03 Jan 1995. 
--4. Display the JoiningDate in a format that appears as Jan 04, 96. 
--5. Write a query to find out total number of months between JoiningDate and 31-Mar-09.
--6. Write a query to find out total number of years between JoiningDate and 14-Sep-10. 
--Part – C:  
--1. Write a query to extract Day, Month, Year from JoiningDate. 
--2. Write a query that adds 5 years to JoiningDate. 
--3. Write a query to subtract 2 months from JoiningDate. 
--4. Extract month from JoiningDate using datename () and datepart () function. 
--5. Calculate your age in years and months
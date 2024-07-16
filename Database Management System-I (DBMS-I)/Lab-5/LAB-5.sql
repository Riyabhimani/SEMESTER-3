--Part – A: 

--Create following table using query according to the definition.

CREATE TABLE STUDENT(
	StuID INT,
	FirstName varchar(25),
	LastName varchar(25),
	Website varchar(50),
	City varchar(25),
	Address varchar(100)
);
insert into STUDENT values(1011, 'Keyur', 'Patel', 'techonthenet.com', 'Rajkot',' A-303 ''Vasant Kunj'', Rajkot')
insert into STUDENT values(1022, 'Hardik','Shah', 'digminecraft.com', 'Ahmedabad', '"Ram Krupa",Raiya Road')
insert into STUDENT values(1033, 'Kajal','Trivedi', 'bigactivities.com' ,'Baroda', 'Raj bhavan plot, near garden')
insert into STUDENT values(1044, 'Bhoomi','Gajera', 'checkyourmath.com','Ahmedabad',' "Jig''s Home", Narol')
insert into STUDENT values(1055, 'Harmit','Mitel',' @me.darshan.com', 'Rajkot', 'B-55, Raj Residency')
insert into STUDENT values(1066, 'Ashok','Jani' ,NULL,'Baroda' ,'A502, Club House Building')
insert into STUDENT values(1066, 'Ashok','Jani' ,NULL,'Bar%oda' ,'A502, Club House Building')
insert into STUDENT values(1066, 'Ashok','Jani' ,NULL,'[Baroda]' ,'A502, Club House Building')


select * from STUDENT;
Truncate table STUDENT;

--From the above given tables perform the following queries (LIKE Operation): 

--1. Display the name of students whose name starts with ‘k’. 
	Select FirstName from STUDENT where FirstName like 'k%';

--2. Display the name of students whose name consists of five characters.
	select FirstName from STUDENT where FirstName like '_____';

--3. Retrieve the first name & last name of students whose city name ends with a & contains six characters. 
	select FirstName,LastName from STUDENT where City like '_____a';

--4. Display all the students whose last name ends with ‘tel’.
	select * from STUDENT where LastName like '%tel';

--5. Display all the students whose first name starts with ‘ha’ & ends with‘t’. 
	select * from STUDENT where FirstName like 'ha%t';

--6. Display all the students whose first name starts with ‘k’ and third character is ‘y’. 
	select * from STUDENT where FirstName like 'k_y%';

--7. Display the name of students having no website and name consists of five characters. 
	select FirstName from STUDENT where Website is Null and FirstName like '_____';

--8. Display all the students whose last name consist of ‘jer’.
	select * from STUDENT where LastName like '%jer%';

--9. Display all the students whose city name starts with either ‘r’ or ‘b’. 
	select * from STUDENT where City like '[rb]%';

--10. Display all the name students having websites.
	select FirstName from STUDENT where Website is not Null; 

--11. Display all the students whose name starts from alphabet A to H.
	select * from STUDENT where FirstName like '[A-H]%';

--12. Display all the students whose name’s second character is vowel. 
	select * from STUDENT where FirstName like '_[AEIOU]%';

--13. Display the name of students having no website and name consists of minimum five characters.
	select FirstName from STUDENT where Website is Null and FirstName like '_____%';

--14. Display all the students whose last name starts with ‘Pat’.
	select * from STUDENT where LastName like 'pat%';

--15. Display all the students whose city name does not starts with ‘b’.
	select * from STUDENT where City not like 'b%';

--Part – B: 

--1. Display all the students whose name starts from alphabet A or H.
	select * from STUDENT where FirstName like '[AH]%';

--2. Display all the students whose name’s second character is vowel and of and start with H. 
	select * from STUDENT where FirstName like 'H[AEIOU]%';

--3. Display all the students whose last name does not ends with ‘a’.
	select * from STUDENT where LastName not like '%a';

--4. Display all the students whose first name starts with consonant. 
	select * from STUDENT where FirstName not like '[AEIOU]%';

--5. Display all the students whose website contains .net 
	select * from STUDENT where Website like '%.net%';

--Part – C: 
--1. Display all the students whose address consist of -.
	select * from STUDENT where Address like '%-%';

--2. Display all the students whose address contains single quote or double quote. 
	select * from STUDENT where Address like '%''%' or Address like '%"%';

--3. Display all the students whose website contains @. 
	select * from STUDENT where Website like '%@%';

--4. Display all the names those are either four or five characters. 
	select FirstName from STUDENT where FirstName like '____' or FirstName like '_____';

--extra
--Display firstname & lastname & address of data which Address contain single quote only not contain apostrophes. 
	select FirstName,LastName,Address from STUDENT where Address like '%''%''%';

--Display City where city contains % .
	select city from STUDENT where City like '%[%]%';
	select city from STUDENT where City like '%[''%'']%';

--Display City where City name starts and end with [].
	select city from STUDENT where City like '/[%/]' escape '/';
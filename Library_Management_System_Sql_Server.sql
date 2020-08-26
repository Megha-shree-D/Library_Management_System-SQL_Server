SELECT * FROM Users
SELECT * FROM Books
SELECT * FROM [Megha Projects].dbo.Category
SELECT * FROM [Megha Projects].dbo.Book_Issues
SELECT * FROM [Megha Projects].dbo.Due_Date_Fees
SELECT * FROM [Megha Projects].dbo.Roles
SELECT * FROM [Megha Projects].dbo.Stock

--WHICH LIBRARIAN HAS ISSUED THE BOOKS
--HOW MANY BOOKS HAVE BEEN ISSUED BY EACH LIBRARIAN 
--Which Librarian has issued more number of books
--NUMBER OF BOOKS ISSUED LESS THAN 3 TIMES
--WHICH BOOKS ARE ISSUED LESS THAN 3 TIMES 
--WHICH BOOKS ARE NOT ISSUED  AT ALL 
--WHICH IS THE COSTLIEST BOOK
--WHICH USER IS FOND OF BOOKS
--WHICH BOOKS ARE RETURNED IN A WEEK

----------**USERS Table**--------
USE [Megha Projects]
GO

DROP TABLE [Megha Projects].dbo.Users
CREATE TABLE [Megha Projects].dbo.Users(
	User_Id int IDENTITY(1,1) NOT NULL,
	Name varchar(20) NULL,
	Gender [char](1) NULL,
	Branch [varchar](30) NULL,
	Role_ID [int] NULL,
	Year [int] NULL,
	Contact [varchar](15) NULL,
	Address [varchar](500) NULL
	)

INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Amshu', 'M', 'Information_Science',2, 2012, '03212121009', 'Bangalore')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Aru', 'M', 'Electronics&Communications',2, 2012, '03001234567', 'Mysore')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Komal', 'F', 'Information_Science',2, 2012, '03047654321', 'Mysore')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Arpitha', 'F', 'Electronics&Communications',2, 2020, '03321234567', 'Coorg')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Kusuma', 'F', 'Information_Science',2, 2020, '03327654321', 'Mysore')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Savitha', 'F', 'Computer_Science',2, 2015, '03072100574', 'Bangalore')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Devraj', 'M', 'Electronics&Communications',2, 2015, '04327654321', 'Coorg')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Shubadha', 'F', 'Information_Science',2, 2020, '03431234567', 'Coorg')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Rajini', 'F', 'Computer_Science',2, 2012, '03231233312', 'Coorg')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Raghu', 'M', 'Electronics&Communications',2, 2017, '04447312345', 'Coorg')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Ranjith', 'M', 'Information_Science',2, 2020, '03072100574', 'Mysore')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Bindhu', 'F', 'Computer_Science',2, 2012, '04327654321', 'Coorg')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Sagar', 'M', 'Electronics&Communications',2, 2018, '03431234567', 'Coorg')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Sharada', 'F', 'Information_Science',2, 2020, '03231233312', 'Bangalore')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Heena', 'F', 'Electronics&Communications',2, 2014, '04447312345', 'Mysore')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Shruthi', 'F', 'Information_Science',2, 2016, '03001234567', 'Coorg')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Shilpa', 'F', 'Computer_Science',2, 2012, '03047654321', 'Bangalore')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Ashwini', 'F', 'Information_Science',2, 2015, '03321234567', 'Mysore')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Jaya', 'F', 'Electronics&Communications',2, 2020, '03327654321', 'Bangalore')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Punya', 'F', 'Computer_Science',2, 2012, '03072100574', 'Mysore')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'SP', 'M', 'Mathematics',3, 2017, '04447312345', 'Coorg')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Sharath', 'M', 'Mathematics',3, 2020, '03072100574', 'Mysore')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Rangnath', 'M', 'Physics',3, 2012, '04327654321', 'Coorg')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Nandini', 'F', 'Biology',3, 2018, '03431234567', 'Coorg')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Kesari', 'M', 'Chemistry',3, 2020, '03231233312', 'Bangalore')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Vaidhyanath', 'M', 'Physics',3, 2014, '04447312345', 'Mysore')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Chetan_Ram', 'M', 'Personality_Developer',3, 2016, '03001234567', 'Coorg')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Sumathi', 'F', 'Chemistry',3, 2012, '03047654321', 'Bangalore')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Coroni', 'M', 'Physics',3, 2015, '03321234567', 'Mysore')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Dinesh', 'M', 'Mathematics',3, 2020, '03327654321', 'Bangalore')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'JVG', 'M', 'Chemistry',3, 2012, '03072100574', 'Mysore')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Ullas', 'M', 'Psychology',1, 2020, '03072100574', 'Mysore')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Pratham', 'M', 'Computer_Science',1, 2012, '04327654321', 'Coorg')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Pavan', 'M', 'Human_Resource',1, 2018, '03431234567', 'Coorg')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Mithun', 'M', 'Information_Science',1, 2020, '03231233312', 'Bangalore')
INSERT INTO [Megha Projects].dbo.USERS VALUES ( 'Punith', 'M', 'Electronics&Communications',1, 2014, '04447312345', 'Mysore')

SELECT * FROM [Megha Projects].dbo.USERS

----------**Book Table**--------
DROP TABLE [Megha Projects].dbo.Books
CREATE TABLE [Megha Projects].dbo.Books (
Book_Id int primary key identity,
Book_Serial_Num int,
Book_Name varchar(50),
Author_Name varchar(50),
Book_Edition varchar(100),
Category_Id INT,
Book_Price MONEY
)

INSERT INTO Books VALUES(101,  'Fundamentals_SQL',			'Corono',   '1st',   1,50)
INSERT INTO Books VALUES(102,  'EXCEL_BASICS',				'Sana',		'1st',   1,30)
INSERT INTO Books VALUES(103,  'Tableau_Beginners',			'Esha',		'1st',   1,20)
INSERT INTO Books VALUES(104,  'Geography_Today',			'Rose',		'1st',   4,50)
INSERT INTO Books VALUES(105,  'Statistics_DataScience',    'Jack',		'1st',   2,60)
INSERT INTO Books VALUES(106,  'C',							'Ram',		'1st',   3,40)
INSERT INTO Books VALUES(107,  'Story_Telling',				'Laxma',	'1st',   1,10)
INSERT INTO Books VALUES(108,  'Python',					'Corono',   '1st',   2,70)
INSERT INTO Books VALUES(109,  'Money_making',				'Rose',		'1st',   4,100)
INSERT INTO Books VALUES(110,  'Gain_Interest',				'Leonardo', '1st',   4,70)
INSERT INTO Books VALUES(111,  'Attention_Seekers',			'Julie',	'2nd',   5,20)
INSERT INTO Books VALUES(112,  'Basic_Maths',				'Sana',		'2nd',   1,30)
INSERT INTO Books VALUES(113,  'Learn_Coding',				'Surya',	'2nd',   3,60)
INSERT INTO Books VALUES(114,  'World_Interested',			'Rose',		'2nd',   4,80)
INSERT INTO Books VALUES(115,  'Networking',				'Jack',		'2nd',   6,30)
INSERT INTO Books VALUES(116,  'Datawarehouse',				'Corono',   '2nd',   1,120)
INSERT INTO Books VALUES(117,  'Economy',					'Leonardo', '2nd',   4,60)
INSERT INTO Books VALUES(118,  'Sorting in  C',				'Jill',		'2nd',   3,30)
INSERT INTO Books VALUES(119,  'Spiritual',					'Jack',		'2nd',   7,50)
INSERT INTO Books VALUES(120,  'Joins_Sql',					'Aru',		'2nd',   1,40)

SELECT * FROM Books

----------**CATEGORY Table**--------
DROP TABLE [Megha Projects].dbo.Category

CREATE TABLE [Megha Projects].dbo.Category(
Category_Id int identity primary key,
Category_Name varchar(20)
)

INSERT INTO CATEGORY VALUES('Data_Analytics')
INSERT INTO CATEGORY VALUES('Data_Science')
INSERT INTO CATEGORY VALUES('Coding')
INSERT INTO CATEGORY VALUES('World_Interests')
INSERT INTO CATEGORY VALUES('Fantacy')
INSERT INTO CATEGORY VALUES('Networks')
INSERT INTO CATEGORY VALUES('Spiritual')

SELECT * FROM [Megha Projects].dbo.CATEGORY 


----------**Book Issues**--------

SELECT * FROM [Megha Projects].dbo.Book_Issues
DROP TABLE [Megha Projects].dbo.Book_Issues
CREATE TABLE [Megha Projects].dbo.Book_Issues(
Bk_Issue_Id int identity primary key,
Date_Of_Issue date,
Return_without_fine as DATEADD(DD,14,cast(Date_Of_Issue as date)),--DATEADD superior to cast, so vize versa not possible
Date_Of_Return Date,
Book_Id int,
Librarian_Issued Varchar(50),
User_Id int
)
INSERT INTO Book_Issues  VALUES ('2020-02-08','2020-03-19',2,'Manvik',1)
INSERT INTO Book_Issues  VALUES ('2020-01-02','2020-02-02',1,'Vish',2)
INSERT INTO Book_Issues  VALUES ('2020-03-03','2020-05-17',3,'Manvik',3)
INSERT INTO Book_Issues  VALUES ('2020-01-02','2020-09-16',5,'Vish',2)
INSERT INTO Book_Issues  VALUES ('2020-04-02','2020-05-24',4,'Manvik',7)
INSERT INTO Book_Issues  VALUES ('2020-06-06','2020-10-09',6,'Vish',8)
INSERT INTO Book_Issues  VALUES ('2020-03-02','2020-03-20',2,'Manvik',6)
INSERT INTO Book_Issues  VALUES ('2020-01-02','2020-01-09',10,'Nazriya',4)
INSERT INTO Book_Issues  VALUES ('2020-05-02','2020-06-18',11,'Manvik',5)
INSERT INTO Book_Issues  VALUES ('2020-07-02','2020-08-19',20,'Nazriya',6)
INSERT INTO Book_Issues  VALUES ('2020-06-02','2020-06-27',13,'Manvik',9)
INSERT INTO Book_Issues  VALUES ('2020-07-15','2020-07-16',12,'Manvik',11)
INSERT INTO Book_Issues  VALUES ('2020-05-22','2020-09-30',13,'Nazriya',10)
INSERT INTO Book_Issues  VALUES ('2020-07-25','2020-07-26',16,'Manvik',13)
INSERT INTO Book_Issues  VALUES ('2020-08-06','2020-08-24',17,'Vish',15)
INSERT INTO Book_Issues  VALUES ('2020-08-12','2020-09-17',19,'Vish',14)
INSERT INTO Book_Issues  VALUES ('2020-07-22','2020-09-28',11,'Nazriya',17)
INSERT INTO Book_Issues  VALUES ('2020-07-30','2020-08-18',9,'Manvik',20)
INSERT INTO Book_Issues  VALUES ('2020-08-12','2020-09-12',2,'Manvik',12)
INSERT INTO Book_Issues  VALUES ('2020-08-12','2020-10-12',1,'Vish',8)
INSERT INTO Book_Issues  VALUES ('2020-07-30','2020-07-30',2,'Manvik',9)
INSERT INTO Book_Issues  VALUES ('2020-07-30','2020-12-30',1,'Nazriya',13)
INSERT INTO Book_Issues  VALUES ('2020-03-02','2020-03-20',2,'Manvik',17)
INSERT INTO Book_Issues  VALUES ('2020-01-02','2020-01-09',10,'Nazriya',7)
INSERT INTO Book_Issues  VALUES ('2020-07-25','2020-09-26',16,'Vish',16)
INSERT INTO Book_Issues  VALUES ('2020-08-06','2020-10-24',17,'Nazriya',12)
INSERT INTO Book_Issues  VALUES ('2020-08-12','2020-09-18',19,'Manvik',17)
INSERT INTO Book_Issues  VALUES ('2020-08-12','2020-09-19',19,'Manvik',16)
INSERT INTO Book_Issues  VALUES ('2020-08-12','2020-09-20',19,'Vish',15)
INSERT INTO Book_Issues  VALUES ('2020-08-12','2020-10-20',19,'Manvik',13)
INSERT INTO Book_Issues  VALUES ('2020-08-12','2020-09-21',19,'Vish',12)
INSERT INTO Book_Issues  VALUES ('2020-07-30','2020-08-19',9,'Manvik',17)
INSERT INTO Book_Issues  VALUES ('2020-09-30','2020-10-20',19,'Vish',19)


SELECT * FROM Book_Issues

----------**Due Date Fees Calculation $**--------

DROP TABLE [Megha Projects].dbo.Due_Date_Fees
CREATE TABLE [Megha Projects].dbo.Due_Date_Fees
(Book_Id INT,
Bk_Issue_Id INT,
Days_Calculation INT ,
Due_Date_Fees MONEY)
INSERT INTO [Megha Projects].dbo.Due_Date_Fees	
SELECT 
Book_Id,
Bk_Issue_Id,
Days_Calculation ,
CASE 
WHEN Days_Calculation <= 14 THEN 0
WHEN Days_Calculation BETWEEN 14 AND 30	 THEN 5
WHEN Days_Calculation BETWEEN 30 AND 60	 THEN 10
WHEN Days_Calculation BETWEEN 60 AND 90	 THEN 20
WHEN Days_Calculation BETWEEN 90 AND 120 THEN 30
ELSE 40
END AS Due_Date_Fees FROM
			 (
				SELECT Book_Id,Bk_Issue_Id,Date_Of_Issue,Date_Of_Return , 
				DATEDIFF(DAY,CAST(Date_Of_Issue AS DATE), CAST(Date_Of_Return AS DATE)) AS Days_Calculation  
				FROM Book_Issues
			) A

SELECT * FROM [Megha Projects].dbo.Due_Date_Fees

----------**Mentioning ROLES **--------

DROP TABLE [Megha Projects].dbo.Roles				
CREATE TABLE [Megha Projects].dbo.Roles(
Role_ID int identity primary key,
Role_Name varchar(50)
)

INSERT INTO Roles VALUES ('Admin'),('Student'),('Faculty')

SELECT * FROM [Megha Projects].dbo.Roles
 
----------**STOCK **--------
DROP TABLE [Megha Projects].dbo.Stock
CREATE TABLE [Megha Projects].dbo.Stock(
Stock_ID int identity primary key,
Stock nvarchar(500),
Copies INT,
Book_Id int
)

INSERT INTO [Megha Projects].dbo.Stock 
VALUES('STOCK',20,1),
('NO-STOCK',0,2),
('STOCK',50,3),
('STOCK',10,4),
('STOCK',20,5),
('NO-STOCK',0,6),
('NO-STOCK',0,7),
('STOCK',5,8),
('STOCK',30,9),
('STOCK',10,10),
('NO-STOCK',0,11),
('STOCK',9,12),
('STOCK',8,13),
('STOCK',3,14),
('NO-STOCK',0,15),
('NO-STOCK',0,16),
('NO-STOCK',0,17),
('STOCK',30,18),
('STOCK',80,19),
('STOCK',50,20)

SELECT * FROM [Megha Projects].dbo.Stock

----------**INNER JOIN USERS+BOOKS+CATEGORY**--------

	SELECT 
		U.User_Id,
		U.Name,U.Gender,
		U.Branch,
		U.Address,
		U.Contact,
		U.Year,
		B.Book_Name,
		B.Author_Name,
		B.Book_Edition,
		B.Book_Serial_Num,
		C.Category_Name
			FROM [Megha Projects].dbo.USERS U  
	INNER JOIN [Megha Projects].dbo.Books B ON U.USER_Id=B.Book_Id
	INNER JOIN [Megha Projects].dbo.CATEGORY C ON B.Category_Id=C.Category_Id

----------**BOOKS+DUE_DATE_FEE+BOOK_ISSUES**--------
SELECT 
B.Book_Name,
B.Author_Name,
BI.Date_Of_Issue,
BI.Date_Of_Return,
DDF.Days_Calculation AS Duration ,
DDF.Due_Date_Fees FROM Book_Issues BI 
INNER JOIN  Due_Date_Fees DDF ON BI.Book_Id=DDF.Book_Id
INNER JOIN Books B ON B.Book_Id=BI.Book_Id

----------**FULL INFO(USERS+BOOK_ISSUE+BOOKS+CATEGORY)**--------

SELECT U.Name AS Borrower_Name,
	B.Book_Name,
	BI.Date_Of_Issue,
	BI.Date_Of_Return,
	C.Category_Name 
FROM USERS U 
	INNER JOIN Book_Issues BI ON U.User_Id=BI.User_Id
	INNER JOIN Books B ON B.Book_Id=BI.Book_Id
	INNER JOIN CATEGORY C ON C.Category_Id=B.Category_Id

----------**stocks+books+category**--------

SELECT B.Book_Name,
C.Category_Name,
S.Stock,
S.Copies
FROM Stock S 
INNER JOIN Books B ON S.Book_Id=B.Book_Id
INNER JOIN CATEGORY C ON C.Category_Id=B.Category_Id

----------**USERS+ROLES**--------
SELECT R.Role_Name,U.Name,U.Branch,U.Contact,U.Address,U.Year FROM USERS U 
INNER JOIN Roles R  ON U.Role_ID=R.Role_ID

----------**Book_Issue+Books+Category+Users**--------
SELECT B.Book_Name,U.Name,C.Category_Name,
CONVERT(VARCHAR,BI.Date_Of_Issue,103) AS Issue_Date
FROM Book_Issues BI 
INNER JOIN Books B ON BI.Book_Id=B.Book_Id
INNER JOIN CATEGORY C ON C.Category_Id=B.Category_Id
INNER JOIN USERS U ON U.User_Id=BI.User_Id

----------**Which Librarian has Issued**--------

SELECT U.Name,B.Book_Name,B.Book_Price,BI.Librarian_Issued,BI.Date_Of_Issue,BI.Date_Of_Return FROM Book_Issues BI 
INNER JOIN Books B ON BI.Book_Id=B.Book_Id
INNER JOIN USERS U ON U.User_Id=BI.User_Id

----------**How many books have each Librarian Issued**--------

SELECT Librarian_Issued,count(Librarian_Issued) as Number_of_Books FROM Book_Issues 
group by Librarian_Issued

----------**Which Librarian has issued more number of books**--------
SELECT	Librarian_Issued,
		Number_of_Books AS Books_Issued FROM 
		(
SELECT Librarian_Issued,count(Librarian_Issued)as Number_of_Books FROM Book_Issues 
group by Librarian_Issued ) A

WHERE Number_of_Books IN 
(
	SELECT MAX(Number_of_Books) FROM 
		(
		SELECT Librarian_Issued,count(Librarian_Issued)as Number_of_Books FROM Book_Issues 
		group by Librarian_Issued )B
)

go
----------**NUMBER OF BOOKS ISSUED LESS THAN 3 TIMES **--------
SELECT COUNT(*) FROM (
SELECT Book_Id, COUNT(Book_Id) ISSUES FROM Book_Issues

GROUP BY Book_Id) A
WHERE ISSUES<3

----------**WHICH BOOKS ARE ISSUED LESS THAN 3 TIMES **--------
SELECT B.Book_Name,A.* FROM (
SELECT Book_Id,COUNT(BOOK_ID) A FROM Book_Issues
GROUP BY Book_Id)A
INNER JOIN Books B ON A.Book_Id=B.Book_Id
WHERE A<3

----------**WHICH BOOKS ARE NOT ISSUED AT ALL **--------
SELECT B.Book_Id,B.Book_Name FROM Books B
LEFT OUTER JOIN Book_Issues BI ON B.Book_Id=BI.Book_Id
WHERE Bk_Issue_Id IS NULL

----------**WHICH IS THE COSTLIEST BOOK **--------
SELECT * FROM Books
WHERE Book_Price IN(
SELECT MAX(Book_Price) FROM Books )


----------**WHICH USER IS FOND OF BOOKS**--------
SELECT 
		U.Name,
		A.Number_Of_Times AS Frequency 
FROM Users U  
INNER JOIN 
		(
			SELECT User_Id,
			Count(User_Id) Number_Of_Times 
			FROM Book_Issues
			GROUP BY User_Id
			) A

ON U.User_Id=A.User_Id

WHERE Number_Of_Times IN

	(
		SELECT MAX(Number_Of_Times) FROM
			(
		SELECT User_Id,Count(User_Id) Number_Of_Times FROM Book_Issues
		GROUP BY User_Id)B
	) 


----------**FINE TABLE**--------

DROP TABLE [Megha Projects].dbo.Fine 
CREATE TABLE [Megha Projects].dbo.Fine(Range_Start INT , Range_End INT , Fine MONEY)
INSERT INTO [Megha Projects].dbo.Fine
VALUES (0,14,0),(14,30,5),(30,60,10),(60,90,20),(90,120,30),(120,9999,40)

 
SELECT * FROM [Megha Projects].dbo.Fine

 
----------**FINE CALCULATION 2ND METHOD**--------
 SELECT A.Book_Id,A.Bk_Issue_Id,A.Days_Calculation,F.Fine FROM [Megha Projects].dbo.Fine F
 INNER JOIN  (
				SELECT Book_Id,Bk_Issue_Id,Date_Of_Issue,Date_Of_Return , 
				DATEDIFF(DAY,CAST(Date_Of_Issue AS DATE), CAST(Date_Of_Return AS DATE)) AS Days_Calculation  
				FROM Book_Issues
			) A
			ON A.Days_Calculation BETWEEN F.Range_Start AND F.Range_End

----------**WHICH BOOKS ARE RETURNED IN A WEEK**--------

SELECT * FROM Book_Issues 
WHERE Date_Of_Return BETWEEN GETDATE() AND GETDATE()+7
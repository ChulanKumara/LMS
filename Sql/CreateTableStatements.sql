
-- USE CREATED DATABASE
USE LibraryManagementSystem;
GO

-- CREATE TABLE dbo.Books
CREATE TABLE [dbo].[Books](
[Book_ID] INT PRIMARY KEY NOT NULL,
[Book_Title] VARCHAR(50) NOT NULL,
[Book_Author] VARCHAR(30) NOT NULL,
[Book_ISBN] VARCHAR(20) NOT NULL,
[Book_No_Of_Copies] VARCHAR(10) NOT NULL,
[Book_Published_Date] DATE NOT NULL,
[Book_Insert_Date] DATE NOT NULL,
[Book_Reserved] INT NOT NULL,
);

-- CREATE TABLE dbo.Users
Create table [dbo].[Users](
ID INT Primary Key NOT NULL,
Username Varchar(20) NOT NUll,
[Password] Varchar(20) NOT NULL,
[Email] Varchar(50) NOT NULL,
Role Varchar(10) NOT NULL,
RegisteredDate DATE NOT NULL
);

-- INSERT VALUES TO dbo.Users TABLE BEFORE LOGGING IN TO WEBSITE
Insert into [dbo].[Users] Values
(1, 'admin', '1234', 'admin@gmail.com', 'admin', '2016-10-11'),
(2, 'Chulan', '123', 'Chulan@gmail.com', 'user', '2016-10-12');
(3, 'Game', '123', 'Game@gmail.com', 'user', '2016-10-13');

-- SELECT ALL FROM dbo.Users TABLE
SELECT * FROM [dbo].[Users];

-- SELECT * FROM dbo.Books TABLE
SELECT * FROM [dbo].[Books];



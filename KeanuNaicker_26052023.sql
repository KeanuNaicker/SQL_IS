/*
Interactive Solutions SA - TSQL Skills Evaluation - Take-home assessment

Instructions / Point to note
1. Please use the Master Database on the SQL instance.

2. Save the script named “Your name + DDMMYYYY”.SQL

3. Ensure that you save your answer script periodically, to ensure that you do not lose work.

4. Put comments in the code if required to explain the logic

Run the below CREATE TABLE and INSERT VALUES code to create data on which your questions are based.
*/


--CREATE TABLE
IF EXISTS (SELECT * FROM sys.tables WHERE [name] = 'FinalMarks' and [type] = 'U')
	DROP TABLE dbo.FinalMarks
GO

CREATE TABLE dbo.FinalMarks 
(

StudentNumber bigint NOT NULL,
Mark int,
[Name] varchar(255),
Surname varchar(255), 
IDNumber varchar(255)

)
GO

--INSERT VALUES
INSERT INTO FinalMarks
([Name], Surname, IDNumber, StudentNumber, Mark)
VALUES 
('Liam','Smith','9102165834081',1000000,956),
('Noah','Johnson','9102165706081',1000001,351),
('William','Williams','9102165773081',1000002,235),
('James','Brown','9102165989083',1000003,521),
('Oliver','Jones','9102166023080',1000004,562),
('Benjamin','Garcia','9102166141080',1000005,743),
('Elijah','Miller','9102165895082',1000006,457),
('Lucas','Davis','9102175257083',1000007,524),
('Mason','Rodriguez','9102175235089',1000008,765),
('Logan','Martinez','9102175468086',1000009,434),
('Alexander','Hernandez','9102175301089',1000010,122),
('Ethan','Lopez','9102175090088',1000011,786),
('Jacob','Gonzales','9102175019087',1000012,436),
('Michael','Wilson','9102175367080',1000013,783),
('Daniel','Anderson','9102175482087',1000014,945),
('Henry','Thomas','9102185749100',1000015,847),
('Jackson','Taylor','9102186278086',1000016,438),
('Sebastian','Moore','9102176057086',1000017,564),
('Aiden','Jackson','9102185648081',1000018,984),
('Matthew','Martin','9102185648081',1000019,22),
('Samuel','Lee','9102185425084',1000020,165),
('David','Perez','9102185349086',1000021,812),
('Joseph','Thompson','9102185597080',1000022,541),
('Carter','White','9102186164088',1000023,546),
('Owen','Harris','9102175928089',1000024,321),
('Wyatt','Sanchez','9102175515084',1000025,456),
('John','Clark','9102186107087',1000026,651),
('Jack','Ramirez','9102185457087',1000027,84),
('Luke','Lewis','9102175614085',1000028,698),
('Jayden','Robinson','9102185083081',1000029,213),
('Dylan','Walker','9102185125080',1000030,196),
('Grayson','Young','9102186353087',1000031,496),
('Levi','Allen','9102186038084',1000032,549),
('Issac','King','9102185331084',1000033,326),
('Gabriel','Wright','9102185498081',1000034,648),
('Julian','Scott','9102185550089',1000035,788),
('Mateo','Torres','9102186282088',1000036,901),
('Anthony','Nguyen','9102195884080',1000037,3),
('Jaxon','Hill','9002245838088',1000038,611),
('Lincoln','Flores','9002245204083',1000039,982),
('Joshua','Green','9102195401083',1000040,348),
('Christopher','Adams','9002245424087',1000041,841),
('Andrew','Nelson','9102195474080',1000042,835),
('Theodore','Baker','9002236234081',1000043,288),
('Caleb','Hall','9002255423086',1000044,646),
('Ryan','Rivera','9102205051084',1000045,837),
('Asher','Campbell','9102205073088',1000046,599),
('Nathan','Mitchell','9102195600080',1000047,624),
('Thomas','Carter','9102205108082',1000048,388),
('Leo','Roberts','9102196075084',1000049,355),
('Emma','Bailey','9001010160082',1000050,482),
('Olivia','Brady','9001010222080',1000051,462),
('Ava','Cooper','9001010246089',1000052,888),
('Isabella','Ellis','9001010511086',1000053,902),
('Sophia','Finley','9001010338084',1000054,911),
('Charlotte','Lincoln','9001011560082',1000055,504),
('Mia','Lennon','9001011042081',1000056,501),
('Amelia','Lennox','9001010652088',1000057,988),
('Harper','Jagger','9001011216081',1000058,699),
('Evelyn','Quinn','9001011293080',1000059,655),
('Abigail','Reagan','9001011684080',1000060,20),
('Emily','Taylor','9001010830080',1000061,98),
('Elizabeth','Tyler','9001010830080',1000062,789),
('Mila','Sawyer','9001010940087',1000063,923),
('Ella','Perez','9001020468087',1000064,629),
('Avery','Thompson','9001011969085',1000065,683),
('Sofia','White','9001020793088',1000066,999),
('Camila','Harris','9001021028088',1000067,12),
('Aria','Sanchez','9001020806088',1000068,955),
('Scarlett','Clark','9001012777081',1000069,981),
('Victoria','Ramirez','9001020828082',1000070,234),
('Madison','Lewis','9001020579081',1000071,282),
('Luna','Robinson','9001012870084',1000072,780),
('Grace','Walker','9001012482088',1000073,685),
('Chloe','Thompson','9001020246087',1000074,636),
('Penelope','Lennon','9001011815080',1000075,460),
('Layla','Ashley','9001012372081',1000076,815),
('Riley','Avery','9001020303086',1000077,638),
('Zoey','Bellamy','9001020229083',1000078,583),
('Nora','Pattinson','9001020998083',1000079,855),
('Lily','Raddix','9001020672084',1000080,875),
('Eleanor','Cassidy','9001021174080',1000081,905),
('Hannah','Everly','9001012624085',1000082,361),
('Lillian','Emerson','9001020214085',1000083,619),
('Addison','Griffin','9001020333083',1000084,649),
('Aubrey','Hazel','9001020950084',1000085,852),
('Ellie','Aislynn','9001020492087',1000086,951),
('Stella','Bexley','9001020370085',1000087,753),
('Natalie','Connelly','9001020262084',1000088,154),
('Zoe','Stone','9004301124080',1000089,66),
('Leah','Madigan','9001031049082',1000090,892),
('Hazel','Jones','9001030317084',1000091,682),
('Violet','Sullivan','9001030206089',1000092,372),
('Aurora','West','9001031159089',1000093,582),
('Savannah','Smith','9001031374084',1000094,689),
('Audrey','Johnson','9001030530082',1000095,752),
('Brooklyn','Williams','9001030758089',1000096,948),
('Bella','Brown','9001030355084',1000097,92),
('Claire','Jones','9004300787085',1000098,918),
('Skylar','White','9001031455081',1000099,666)
GO


Select *
From FinalMarks

--ASSESSMENT START	    DURATION: N/A																  MAX MARK: 45 - Marker's discretion on code and if question requirements are met

/*
You have been given the final mark data (out of 1000) for students from a university. The university uses a single centralized database for the entire university. You are tasked with entering 
the data into a database (already done for you). The university requires you to create any supporting database objects for the software developer to implement in a front-end application. 
*/


/*
1. The FinalMarks table contains Student name, Surname and ID Number along with their mark. As a DBA you recognise that this is a poor design and requires normalisation. 
   Remember to enforce referential integrity and add any indexes that can prove useful in searches.																				   (10)
*/

---------------------------------------------------------------------------------------------------------------------------

CREATE TABLE dbo.Students -- Create Table for Students
(
    StudentNumber BIGINT PRIMARY KEY,
    [Name] VARCHAR(255),
    Surname VARCHAR(255),
    IDNumber VARCHAR(255)

);

INSERT INTO dbo.Students (StudentNumber, [Name], Surname, IDNumber) -- Inserts Student Data
SELECT DISTINCT StudentNumber, [Name], Surname, IDNumber
FROM FinalMarks;


CREATE TABLE dbo.Marks -- Create Table for Marks
(
    MarkID INT PRIMARY KEY,
    StudentNumber BIGINT,
    Mark INT,
    FOREIGN KEY (StudentNumber) REFERENCES dbo.Students(StudentNumber)
);

INSERT INTO dbo.Marks (MarkID, StudentNumber, Mark) -- Inserts Mark Data
SELECT ROW_NUMBER() OVER (ORDER BY StudentNumber) AS MarkID,
       StudentNumber,
       Mark
FROM FinalMarks;

Select * -- Check Tables were created correctly
From Students, Marks

---------------------------------------------------------------------------------------------------------------------------

/*
2. Demonstrate with a code example from the table/s you've created in Q1 the concept of a deadlock.																					(5)
*/


---------------------------------------------------------------------------------------------------------------------------

BEGIN TRANSACTION; -- Query 1

UPDATE dbo.Students
SET [Name] = 'John Doe'
WHERE StudentNumber = 1000000;

WAITFOR DELAY '00:00:05'; -- Wait for 5 seconds

UPDATE dbo.Marks
SET Mark = 800
WHERE StudentNumber = 1000000;

COMMIT;

BEGIN TRANSACTION; -- Query 2

UPDATE dbo.Marks
SET Mark = 900
WHERE StudentNumber = 1000000;

WAITFOR DELAY '00:00:05'; -- Wait for 5 seconds

UPDATE dbo.Students
SET [Name] = 'Jane Smith'
WHERE StudentNumber = 1000000;

COMMIT;

-- Running both of these at the same time will result in a deadlock as both are trying to update the same tables


---------------------------------------------------------------------------------------------------------------------------

/*
3. Create a procedure to add a new student. Your procedure must take name, surname and ID number as parameters.																		(10)
   Your procedure must perform the following:
   > Enter a new student in the table you created in Q1.
   > Check if the student already exists, if yes, display an appropriate message. (You may choose your own method to achieve this requirement)
   
   HINT: To ensure that a student number is never assigned to more than one student, create a table to store a seed value for student numbers.
*/

---------------------------------------------------------------------------------------------------------------------------


CREATE TABLE dbo.StudentNumberSeedValues -- Table to store seed values
(
    SeedValue BIGINT
);

INSERT INTO dbo.StudentNumberSeedValues (SeedValue) -- Import Seed Values
SELECT DISTINCT StudentNumber
FROM FinalMarks;

-- Create Stored Proc
CREATE PROCEDURE dbo.AddNewStudent
    @Name VARCHAR(255),
    @Surname VARCHAR(255),
    @IDNumber VARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @NewStudentNumber BIGINT;

    -- Check if the student already exists
    IF EXISTS (SELECT 1 FROM dbo.Students WHERE IDNumber = @IDNumber)
    BEGIN
        PRINT 'Student already exists.';
        RETURN;
    END;

    -- Generate a new student number
    UPDATE dbo.StudentNumberSeedValues
    SET SeedValue = SeedValue + 1;

    SELECT @NewStudentNumber = SeedValue FROM dbo.StudentNumberSeedValues;

    -- Insert the new student
    INSERT INTO dbo.Students (StudentNumber, [Name], Surname, IDNumber)
    VALUES (@NewStudentNumber, @Name, @Surname, @IDNumber);

    PRINT 'New student added successfully.';
END;

EXEC dbo.AddNewStudent 'Keanu', 'Naicker', '960427513654'; -- Add New Student via Stored Proc(Replace Name, Surname and ID Number)

Select * -- New Student Check
From Students

---------------------------------------------------------------------------------------------------------------------------

/*
4. The university wishes to know how many students have graduated with distinction (in percentage). The ranges are as follows
											 75 - 84				 Cum Laude
											 85 - 94				 Magna Cum Laude
											 >    94				 Summa Cum Laude

Write the code to produce the following report from your table (NB: the Highest Percentage in range column should get the highest percentage from the student in that range)	 (10)
											
											
											Distinction			Count		Highest Percentage in range
											Summa Cum Laude		8			99.90
											Magna Cum Laude		13			94.80
											Cum Laude			14			84.70
*/

---------------------------------------------------------------------------------------------------------------------------

SELECT
    CASE
        WHEN Mark > 94 THEN 'Summa Cum Laude'
        WHEN Mark BETWEEN 85 AND 94 THEN 'Magna Cum Laude'
        WHEN Mark BETWEEN 75 AND 84 THEN 'Cum Laude'
    END AS Distinction,
    COUNT(*) AS [Count],
    MAX(Mark) AS [Highest Percentage in range]
FROM
    FinalMarks
WHERE
    Mark >= 75
GROUP BY
    CASE
        WHEN Mark > 94 THEN 'Summa Cum Laude'
        WHEN Mark BETWEEN 85 AND 94 THEN 'Magna Cum Laude'
        WHEN Mark BETWEEN 75 AND 84 THEN 'Cum Laude'
    END
ORDER BY
    [Highest Percentage in range] DESC;

---------------------------------------------------------------------------------------------------------------------------

/*
5. You have been given the ID Number information for the students. The university wishes to know who are the Male and Female students in the Top 10. 
   Create a procedure that takes in either 'M' (Male) or 'F' (Female) as a parameter. Your output should have the following columns:
	 Position 
	 Title (either Mr or Ms)
	 Student Full Name
	 Mark


Hint: The first six digits of an ID number is the birth date, the following four digits denote the gender. A number greater than equal to 5000 is a male.	 (10)
*/

---------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE GetTop10StudentsByGender -- Create stored Proc
    @Gender CHAR(1)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT TOP 10
        ROW_NUMBER() OVER (ORDER BY Mark DESC) AS Position,
        CASE
            WHEN @Gender = 'M' THEN 'Mr.'
            WHEN @Gender = 'F' THEN 'Ms.'
        END AS Title,
        CONCAT([Name], ' ', Surname) AS [Student Full Name],
        Mark
    FROM
        FinalMarks
    WHERE
        SUBSTRING(IDNumber, 7, 4) >= '5000' AND @Gender = 'M'
        OR
        SUBSTRING(IDNumber, 7, 4) < '5000' AND @Gender = 'F'
    ORDER BY
        Mark DESC;
END



EXEC GetTop10StudentsByGender @Gender = 'M'; -- Get Top 10 Males
EXEC GetTop10StudentsByGender @Gender = 'F'; -- Get Top 10 Females

---------------------------------------------------------------------------------------------------------------------------

/*

Thanks for the incredible opportunity, I really appreciate it

  - Keanu Naicker

*/
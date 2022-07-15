
-- Index
CREATE INDEX [StuName] ON Student([First Name], [Last Name])

-- View StudentID = 'He0000'
DROP VIEW view_summary
CREATE VIEW view_summary AS
SELECT  Acess.CourseID, cl.Semester, Enroll.GroupID, cl.[Start Date], cl.[End Date], co.Average, co.PASS
FROM 
	Student st INNER JOIN Contact co ON st.StudentID = co.StudentID
	INNER JOIN Class cl ON cl.ClassID = co.ClassID
	INNER JOIN Enroll ON Enroll.ClassID = cl.ClassID
	LEFT JOIN Acess ON cl.ClassID = Acess.ClassID
WHERE st.StudentID = 'HE000'
GROUP BY CourseID, Semester, GroupID,cl.[Start Date], cl.[End Date], co.Average, co.PASS

SELECT * FROM view_summary



-- STORED PROCEDURE count student join GROUP SE1604
DROP PROCEDURE Count_Student
CREATE PROCEDURE Count_Student
	@GR NVARCHAR(50),
	@COUNT INT OUT
AS
BEGIN
	SELECT @COUNT = COUNT(StudentID) FROM [Join] WHERE GroupID = @GR
END

DECLARE @Num INT = 0;
EXEC Count_Student @GR = 'SE1604', @COUNT = @Num OUT
PRINT @Num;

-- TRIGGER -- 
DROP TRIGGER Tr_update_AVG
CREATE TRIGGER Tr_update_AVG ON Contact
FOR UPDATE, INSERT AS
IF (SELECT Average FROM Contact)
	>	10
BEGIN
	PRINT N'Wrong Input, Average can greater than 10'
	ROLLBACK TRAN
END


--10 QUERY--

--o   A query that uses ORDER BY: Sắp xếp danh sách học sinh theo First Name
SELECT  *  FROM Student ORDER BY [First Name]


--o   A query that uses INNER JOINS: Xem các lớp và Assigment mà Sinh Viên tham gia
SELECT Student.StudentID, [First Name]+' '+[Last Name] AS [Full Name], 
	Class.ClassID, AssignmentID, Semester, [Start Date], [End Date] 
FROM
	Student INNER JOIN [Join] ON Student.StudentID = [Join].StudentID
			 INNER JOIN Enroll ON Enroll.GroupID = [Join].GroupID
			 INNER JOIN Class ON Enroll.ClassID = Class.ClassID
ORDER BY Student.StudentID	


--o   A query that uses aggregate functions: Đếm số giáo viên dạy học trong các Kỳ
SELECT  Semester, COUNT(LectureID) AS 'NumOfLec' FROM Class  GROUP BY Semester


--o   A query that uses the GROUP BY and HAVING clauses: Đếm số giáo viên dạy học trong kỳ 'SPR22'
SELECT  Semester, COUNT(LectureID) AS 'NumOfLec' 
FROM Class  
GROUP BY Semester
HAVING Semester='SPR22'


--o   A query that uses a sub-query as a relation: Xem các lớp và Assigment mà Sinh Viên tham gia
SELECT st.StudentID,  st.[Full Name], Class.ClassID, AssignmentID, Semester, [Start Date], [End Date] 
FROM
	(SELECT [First Name]+' '+[Last Name] as [Full Name], StudentID 
	FROM Student) as st  INNER JOIN [Join] ON st.StudentID = [Join].StudentID
			 INNER JOIN Enroll ON Enroll.GroupID = [Join].GroupID
			 INNER JOIN Class ON Enroll.ClassID = Class.ClassID


--o   A query that uses a sub-query in the WHERE clause

--o   A query that uses partial matching in the WHERE clause: xem trạng thái của sinh viên ở lớp học có ID = 2
SELECT J.StudentID, CONCAT([Last Name], ' ', [First Name]) AS [Student Name], ClassID, Average, [PASS]
FROM 
	Student INNER JOIN [Join] AS J ON Student.StudentID = J.StudentID 
			 INNER JOIN [Contact] AS C ON J.StudentID = C.StudentID
WHERE ClassID LIKE '2'

--o   A query that uses a self-JOIN: Tên của những Sinh viên lớn tuổi nhất

SELECT st.[First Name]+' '+ st.[Last Name] as [Full Name]
FROM Student st
EXCEPT
SELECT a.[First Name]+ ' '+ a.[Last Name] 
FROM Student a, Student b 
WHERE YEAR(a.DoB) > YEAR(b.DoB)
	





-- Xem thông tin khoá học 'CSD202' của Sinh Viên HE000
SELECT  Acess.CourseID, cl.Semester, Enroll.GroupID, cl.[Start Date], cl.[End Date], co.Average, co.PASS
FROM 
	Student st INNER JOIN Contact co ON st.StudentID = co.StudentID
	INNER JOIN Class cl ON cl.ClassID = co.ClassID
	INNER JOIN Enroll ON Enroll.ClassID = cl.ClassID
	LEFT JOIN Acess ON cl.ClassID = Acess.ClassID
WHERE st.StudentID = 'HE000'
GROUP BY CourseID, Semester, GroupID,cl.[Start Date], cl.[End Date], co.Average, co.PASS
HAVING CourseID='CSD202'
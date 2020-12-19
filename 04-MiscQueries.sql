SELECT * FROM Courses WHERE Id IN (
SELECT CourseId FROM CourseProfessors WHERE ProfessorId IN (
SELECT Id FROM Professors WHERE Title LIKE '%mr.dr.%'
)
)

SELECT DISTINCT(Title) FROM Professors

SELECT TOP 3 * FROM Students ORDER BY LastName

SELECT MIN(Mark), MAX(Mark) FROM Students
JOIN StudentCourses ON Students.Id = StudentCourses.StudentId
JOIN Courses ON StudentCourses.CourseId = Courses.Id
WHERE Students.LastName = 'Ivić'

SELECT MIN(Mark) AS LowestGrade, MAX(Mark) AS HighestGrade FROM Students
JOIN StudentCourses ON Students.Id = StudentCourses.StudentId
JOIN Courses ON StudentCourses.CourseId = Courses.Id
WHERE Students.LastName = 'Ivić'

SELECT MIN(Mark) AS LowestGrade, MAX(Mark) AS HighestGrade FROM Students s
JOIN StudentCourses sc ON s.Id = sc.StudentId
JOIN Courses c ON sc.CourseId = c.Id
WHERE s.LastName = 'Ivić'

SELECT COUNT(*) FROM StudentCourses

SELECT COUNT(*) FROM StudentCourses WHERE Mark IS NOT NULL

SELECT AVG(Mark) AS AverageGrade FROM StudentCourses WHERE StudentCourses.CourseId = 3

SELECT * FROM StudentCourses ORDER BY CourseId

SELECT AVG(CAST(Mark AS FLOAT)) AS AverageGrade FROM StudentCourses WHERE StudentCourses.CourseId = 3

SELECT SUM(Mark) AS GradeSum FROM StudentCourses

SELECT * FROM Students WHERE FirstName LIKE ''

SELECT * FROM Students WHERE IndexNumber LIKE '___-%'

SELECT * FROM Students s
JOIN StudentCourses sc ON s.Id = sc.StudentId
JOIN Courses c ON sc.CourseId = c.Id
WHERE sc.Mark <> 5

SELECT * FROM Students WHERE LastName = 'Stipić'
UNION
SELECT * FROM Students WHERE FirstName = 'Janko'

SELECT * FROM Students s
JOIN StudentCourses sc ON s.Id = sc.StudentId
JOIN Courses c ON sc.CourseId = c.Id
WHERE EXISTS (
SELECT Mark FROM StudentCourses sc WHERE sc.Mark = 5
)

SELECT * FROM Students s
JOIN StudentCourses sc ON s.Id = sc.StudentId
JOIN Courses c ON sc.CourseId = c.Id
WHERE EXISTS (
SELECT Mark FROM StudentCourses sc WHERE sc.StudentId = s.Id AND sc.Mark = 5
)

SELECT * FROM Students s
JOIN StudentCourses sc ON s.Id = sc.StudentId
JOIN Courses c ON sc.CourseId = c.Id
WHERE EXISTS (
SELECT Mark FROM StudentCourses sc WHERE sc.StudentId = s.Id AND sc.CourseId = c.Id AND sc.Mark = 5
)

SELECT * INTO StudentsBackup FROM Students

SELECT * FROM StudentsBackup

SELECT s.*, sc.Mark, c.Name,
CASE
    WHEN Mark = 1 THEN 'Pad'
    WHEN Mark > 1 THEN 'Prolaz'
    ELSE 'Nije ocijenjen'
END AS DidPass
FROM Students s
JOIN StudentCourses sc ON s.Id = sc.StudentId
JOIN Courses c ON sc.CourseId = c.Id

SELECT s.*, ISNULL(sc.Mark, 1) AS Mark, c.Name,
CASE
    WHEN Mark = 1 THEN 'Pad'
    WHEN Mark > 1 THEN 'Prolaz'
    ELSE 'Nije ocijenjen'
END AS DidPass
FROM Students s
JOIN StudentCourses sc ON s.Id = sc.StudentId
JOIN Courses c ON sc.CourseId = c.Id
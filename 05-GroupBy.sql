SELECT AVG(Mark) FROM StudentCourses sc
JOIN Courses c
ON sc.CourseId = c.Id
GROUP BY sc.CourseId
ORDER BY c.Name -- neće radit

SELECT AVG(Mark), MIN(c.Name) FROM StudentCourses sc
JOIN Courses c
ON sc.CourseId = c.Id
GROUP BY sc.CourseId
ORDER BY c.Name -- opet neće radit

SELECT AVG(Mark), MIN(c.Name) FROM StudentCourses sc
JOIN Courses c
ON sc.CourseId = c.Id
GROUP BY sc.CourseId
ORDER BY MIN(c.Name)

SELECT AVG(CAST(Mark AS float)) AS AverageGrade, MIN(c.Name) AS CourseName FROM StudentCourses sc
JOIN Courses c
ON sc.CourseId = c.Id
GROUP BY sc.CourseId
ORDER BY CourseName

SELECT AVG(CAST(Mark AS float)) AS AverageGrade, Name FROM StudentCourses sc
JOIN Courses c
ON sc.CourseId = c.Id
GROUP BY c.Name
ORDER BY c.Name

--

SELECT COUNT(*) AS NumberOfGrades, MIN(s.FirstName) AS FirstName, MIN(s.LastName) AS LastName FROM StudentCourses sc
JOIN Students s
ON sc.StudentId = s.Id
WHERE sc.Mark IS NOT NULL
GROUP BY sc.StudentId
ORDER BY LastName

SELECT AVG(CAST(Mark AS float)) AS AverageGrade, Name FROM StudentCourses sc
JOIN Courses c
ON sc.CourseId = c.Id
WHERE AVG(CAST(Mark AS float)) > 2
GROUP BY c.Name
ORDER BY c.Name -- neće radit

SELECT AVG(CAST(Mark AS float)) AS AverageGrade, Name FROM StudentCourses sc
JOIN Courses c
ON sc.CourseId = c.Id
GROUP BY c.Name
HAVING AVG(CAST(Mark AS float)) >= 2
ORDER BY c.Name
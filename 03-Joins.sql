SELECT * FROM Students JOIN StudentCourses ON Students.Id = StudentCourses.StudentId

SELECT * FROM Students
JOIN StudentCourses ON Students.Id = StudentCourses.StudentId
JOIN Courses ON StudentCourses.CourseId = Courses.Id

SELECT Students.FirstName, Students.LastName, Courses.Name, StudentCourses.Mark, StudentCourses.GradedOn FROM Students
JOIN StudentCourses ON Students.Id = StudentCourses.StudentId
JOIN Courses ON StudentCourses.CourseId = Courses.Id

--

SELECT * FROM Students LEFT JOIN StudentCourses ON Students.Id = StudentCourses.StudentId -- Mirela Veljaca je redak razlike

SELECT * FROM Students RIGHT JOIN StudentCourses ON Students.Id = StudentCourses.StudentId -- Rezultat je isti kao inner jer u međutablici mora postojat vrijednost pa ono što je njoj s lijeva nikad nije NULL

SELECT * FROM Students FULL OUTER JOIN StudentCourses ON Students.Id = StudentCourses.StudentId -- U ovom slučaju isti rezultat kao left join

-- 2. zadatak - 1. join

SELECT * FROM Students
JOIN StudentCourses ON Students.Id = StudentCourses.StudentId
JOIN Courses ON StudentCourses.CourseId = Courses.Id
JOIN CourseProfessors ON Courses.Id = CourseProfessors.CourseId
JOIN Professors ON CourseProfessors.ProfessorId = Professors.Id
WHERE Students.FirstName = 'Stipe' AND Students.LastName = 'Stipić'

SELECT Professors.FirstName, Professors.LastName FROM Students
JOIN StudentCourses ON Students.Id = StudentCourses.StudentId
JOIN Courses ON StudentCourses.CourseId = Courses.Id
JOIN CourseProfessors ON Courses.Id = CourseProfessors.CourseId
JOIN Professors ON CourseProfessors.ProfessorId = Professors.Id
WHERE Students.FirstName = 'Stipe' AND Students.LastName = 'Stipić'

-- 2. zadatak - 2. join

SELECT * FROM Students
JOIN StudentCourses ON Students.Id = StudentCourses.StudentId
JOIN Courses ON StudentCourses.CourseId = Courses.Id
WHERE StudentCourses.Mark IS NOT NULL
ORDER BY Courses.Name, StudentCourses.Mark DESC

SELECT Students.FirstName, Students.LastName, Courses.Name, StudentCourses.Mark, StudentCourses.GradedOn FROM Students
JOIN StudentCourses ON Students.Id = StudentCourses.StudentId
JOIN Courses ON StudentCourses.CourseId = Courses.Id
WHERE StudentCourses.Mark IS NOT NULL
ORDER BY Courses.Name, StudentCourses.Mark DESC
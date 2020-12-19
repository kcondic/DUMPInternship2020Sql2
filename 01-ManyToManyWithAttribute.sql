DROP TABLE Grades

CREATE TABLE StudentCourses
(
  StudentId int FOREIGN KEY REFERENCES Students(Id) NOT NULL,
  CourseId int FOREIGN KEY REFERENCES Courses(Id) NOT NULL,
  CONSTRAINT StudentCoursesPrimaryKey PRIMARY KEY (StudentId, CourseId),
  Mark int CHECK(Mark BETWEEN 1 AND 5),
  GradedOn datetime2
);
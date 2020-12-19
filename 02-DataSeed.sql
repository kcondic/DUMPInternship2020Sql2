INSERT INTO Professors VALUES
('Stipe', 'Stipić', 'mag.ing.'),
('Dora', 'Dorić', 'mag.ing.'),
('Ivona', 'Ivić', 'mag.ing.'),
('Marko', 'Marić', 'mag.ing.')

INSERT INTO Students VALUES
('Janko', 'Ivanovski', '333-2015'),
('Mirela', 'Veljača', '323-2005'),
('Vinko', 'Braović', '58-2020'),
('Darko', 'Marević', '99-2017'),
('Zlatko', 'Smodlaka', '226-2018')

INSERT INTO CourseProfessors VALUES
(1, 1002),
(1, 1004),
(2, 1003),
(3, 1003),
(3, 1004),
(4, 1002),
(4, 1003),
(4, 1004),
(5, 1005)

INSERT INTO StudentCourses VALUES
(1,1,1,'2020-05-01'),
(2,1,3,'2020-07-12'),
(1005,1,NULL,NULL),
(2,2,NULL,NULL),
(3,2,2,'2019-03-18'),
(1002,2,NULL,NULL),
(1004,2,1,'2017-02-02'),
(1005,2,2,'2020-08-01'),
(1,3,4,'2020-05-16'),
(1006,3,3,'2020-05-18'),
(3,4,NULL,NULL),
(1002,4,2,'2019-04-09'),
(1005,4,NULL,NULL),
(1006,4,1,'2020-06-06'),
(2,5,5,'2020-05-01'),
(1004,5,5,'2020-05-03')
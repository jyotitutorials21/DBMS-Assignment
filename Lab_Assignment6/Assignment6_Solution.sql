
SQL> SELECT COUNT(*) AS Total_Students
  2  FROM Student;

TOTAL_STUDENTS
--------------
            10

SQL> SELECT COUNT(*) AS Total_Faculty FROM Faculty;

TOTAL_FACULTY
-------------
           10

SQL> SELECT COUNT(*) AS Total_Courses FROM Course;

TOTAL_COURSES
-------------
           10

SQL> SELECT MAX(Credits) AS Maximum_Credits FROM Course;

MAXIMUM_CREDITS
---------------
              4

SQL> SELECT MIN(Credits) AS Minimum_Course FROM Course;

MINIMUM_COURSE
--------------
              3


SQL> SELECT DepartmentID, COUNT(*) AS Number_of_Students
  2  FROM Student
  3  GROUP BY DepartmentID;

DEPARTMENTID NUMBER_OF_STUDENTS
------------ ------------------
         101                  2
         102                  3
         103                  2
         104                  2
         105                  1

SQL> SELECT DepartmentID, COUNT(*) AS Number_of_Faculty
  2  FROM Faculty
  3  GROUP BY DepartmentID;

DEPARTMENTID NUMBER_OF_FACULTY
------------ -----------------
         101                 2
         102                 2
         103                 2
         104                 2
         105                 2

SQL> SELECT DepartmentID, COUNT(*) AS Number_of_Courses
  2  FROM Course
  3  GROUP BY DepartmentID;

DEPARTMENTID NUMBER_OF_COURSES
------------ -----------------
         101                 4
         102                 3
         103                 1
         104                 1
         105                 1

SQL> SELECT Semester, COUNT(*) AS Total_Enrollments
  2  FROM Enrollment
  3  GROUP BY Semester;

SEMESTER   TOTAL_ENROLLMENTS
---------- -----------------
Sem IV                     4
Sem III                    3
Sem II                     3

SQL> SELECT Grade, COUNT(*) AS Total_Students
  2  FROM Enrollment
  3  GROUP BY Grade;

GRADE TOTAL_STUDENTS
----- --------------
A                  4
B+                 3
A-                 2
B                  1

SQL> SELECT DepartmentID, COUNT(*) AS Total_Students
  2  FROM Student
  3  GROUP BY DepartmentID
  4  HAVING COUNT(*)>3;

no rows selected

SQL> SELECT Semester, COUNT(*) AS Total_Enrollments
  2  FROM Enrollment
  3  GROUP BY Semester
  4  HAVING COUNT(*) > 2;

SEMESTER   TOTAL_ENROLLMENTS
---------- -----------------
Sem IV                     4
Sem III                    3
Sem II                     3

SQL> SELECT Grade, COUNT(*) AS Total_Students
  2  FROM Enrollment
  3  GROUP BY Grade
  4  HAVING COUNT(*) > 1;

GRADE TOTAL_STUDENTS
----- --------------
A                  4
B+                 3
A-                 2

SQL> SELECT DepartmentID, COUNT(*) AS Total_Courses
  2  FROM Course
  3  GROUP BY DepartmentID
  4  HAVING COUNT(*) > 1;

DEPARTMENTID TOTAL_COURSES
------------ -------------
         101             4
         102             3


SQL> SELECT CourseID, COUNT(StudentID) AS Total_Students
  2  FROM Enrollment
  3  GROUP BY CourseID;

  COURSEID TOTAL_STUDENTS
---------- --------------
       301              1
       302              1
       305              2
       306              1
       307              1
       308              1
       309              2
       310              1

8 rows selected.

SQL> SELECT C.CourseName, COUNT(E.StudentID) AS Enrolled_Students
  2  FROM Course C
  3  JOIN Enrollment E
  4  ON C.CourseID = E.CourseID
  5  GROUP BY C.CourseName;

COURSENAME                                         ENROLLED_STUDENTS
-------------------------------------------------- -----------------
Data Structures                                                    1
Database Management Systems                                        1
Introduction to Artificial Intelligence                            2
Machine Learning                                                   1
Python for Data Science                                            1
Electrical Machines                                                1
Thermodynamics                                                     2
Engineering Mechanics                                              1

8 rows selected.

SQL> SELECT DepartmentID, COUNT(StudentID) AS Total_Students
  2  FROM Student
  3  GROUP BY DepartmentID;

DEPARTMENTID TOTAL_STUDENTS
------------ --------------
         101              2
         102              3
         103              2
         104              2
         105              1

SQL> SELECT F.Name, COUNT(C.CourseID) AS Courses_Taught
  2  FROM Faculty F
  3  JOIN Course C
  4  ON F.FacultyID = C.FacultyID
  5  GROUP BY F.Name;

NAME                                               COURSES_TAUGHT
-------------------------------------------------- --------------
Prof. M. P. Singh                                               2
Prof. E. Haque                                                  2
Dr. Prity Kumari Choudhary                                      2
Prof. Sujit Kumar                                               2
Prof. Md. Hafeezullah                                           2

SQL> SELECT C.CourseName, MAX(E.Grade) AS Maximum_Grade
  2  FROM Course C
  3  JOIN Enrollment E
  4  ON C.CourseID = E.CourseID
  5  GROUP BY C.CourseName;

COURSENAME                                         MAXIM
-------------------------------------------------- -----
Data Structures                                    A
Database Management Systems                        B+
Introduction to Artificial Intelligence            A
Machine Learning                                   A-
Python for Data Science                            B+
Electrical Machines                                B
Thermodynamics                                     B+
Engineering Mechanics                              A

8 rows selected.

SQL> SELECT C.CourseName, MAX(E.Grade) AS Maximum_Grade
  2  FROM Course C
  3  JOIN Enrollment E
  4  ON C.CourseID = E.CourseID
  5  GROUP BY C.CourseName;

COURSENAME                                         MAXIM
-------------------------------------------------- -----
Data Structures                                    A
Database Management Systems                        B+
Introduction to Artificial Intelligence            A
Machine Learning                                   A-
Python for Data Science                            B+
Electrical Machines                                B
Thermodynamics                                     B+
Engineering Mechanics                              A

8 rows selected.

SQL> SELECT DepartmentID, COUNT(*) AS Total_Courses
  2  FROM Course
  3  GROUP BY DepartmentID;

DEPARTMENTID TOTAL_COURSES
------------ -------------
         101             4
         102             3
         103             1
         104             1
         105             1

SQL> SELECT Semester, COUNT(StudentID) AS Total_Students
  2  FROM Enrollment
  3  GROUP BY Semester;

SEMESTER   TOTAL_STUDENTS
---------- --------------
Sem IV                  4
Sem III                 3
Sem II                  3

SQL> SELECT C.CourseName, COUNT(E.StudentID) AS Total_Students
  2  FROM Course C
  3  JOIN Enrollment E
  4  ON C.CourseID = E.CourseID
  5  GROUP BY C.CourseName
  6  HAVING COUNT(E.StudentID) > 2;

no rows selected

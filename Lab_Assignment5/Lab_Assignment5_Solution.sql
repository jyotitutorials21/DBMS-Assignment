
SQL> SELECT S.StudentID, S.Name, E.CourseID
  2  FROM Student S
  3  INNER JOIN Enrollment E
  4  ON S.StudentID = E.StudentID;

 STUDENTID NAME                                                 COURSEID
---------- -------------------------------------------------- ----------
       401 Jyoti Kumari                                              301
       402 Monalisha                                                 302
       403 Nidhi Kumari                                              305
       403 Nidhi Kumari                                              306
       404 Mili                                                      307
       405 Neha Kumari                                               305
       406 Suman Kumar                                               308
       408 Ravi Kumar                                                309
       409 Rahul Ranjan                                              309
       410 Priya Kumari                                              310

10 rows selected.

SQL> SELECT S.Name, E.Semester
  2  FROM Student S
  3  INNER JOIN Enrollment E
  4  ON S.StudentID=E.StudentID;

NAME                                               SEMESTER
-------------------------------------------------- ----------
Jyoti Kumari                                       Sem IV
Monalisha                                          Sem IV
Nidhi Kumari                                       Sem III
Nidhi Kumari                                       Sem III
Mili                                               Sem II
Neha Kumari                                        Sem II
Suman Kumar                                        Sem IV
Ravi Kumar                                         Sem III
Rahul Ranjan                                       Sem IV
Priya Kumari                                       Sem II

10 rows selected.

SQL> SELECT S.Name, E.Grade
  2  FROM Student S
  3  INNER JOIN Enrollment E
  4  ON S.StudentID=E.StudentID;

NAME                                               GRADE
-------------------------------------------------- -----
Jyoti Kumari                                       A
Monalisha                                          B+
Nidhi Kumari                                       A
Nidhi Kumari                                       A-
Mili                                               B+
Neha Kumari                                        A
Suman Kumar                                        B
Ravi Kumar                                         B+
Rahul Ranjan                                       A-
Priya Kumari                                       A

10 rows selected.

SQL> SET LINESIZE 200;
SQL> SET PAGESIZE 100;
SQL>
SQL> COLUMN CourseName FORMAT A35;
SQL> COLUMN Name FORMAT A30;
SQL>
SQL> SELECT C.CourseName, C.Credits, F.Name
  2  FROM Course C
  3  JOIN Faculty F
  4  ON C.FacultyID = F.FacultyID;

COURSENAME                             CREDITS NAME
----------------------------------- ---------- ------------------------------
Data Structures                              4 Prof. M. P. Singh
Operating Systems                            4 Prof. M. P. Singh
Database Management Systems                  4 Prof. E. Haque
Computer Networks                            3 Prof. E. Haque
Introduction to Artificial Intellig          4 Dr. Prity Kumari Choudhary
ence

Machine Learning                             4 Dr. Prity Kumari Choudhary
Python for Data Science                      3 Prof. Sujit Kumar
Electrical Machines                          4 Prof. Sujit Kumar
Thermodynamics                               4 Prof. Md. Hafeezullah
Engineering Mechanics                        3 Prof. Md. Hafeezullah

10 rows selected.

SQL> SET LINESIZE 200;
SQL> SET PAGESIZE 100;
SQL>
SQL> COLUMN StudentName FORMAT A25;
SQL> COLUMN CourseName FORMAT A35;
SQL> COLUMN FacultyName FORMAT A30;
SQL>
SQL> SELECT S.Name AS StudentName,
  2         C.CourseName,
  3         F.Name AS FacultyName
  4  FROM Student S
  5  INNER JOIN Enrollment E
  6  ON S.StudentID = E.StudentID
  7  INNER JOIN Course C
  8  ON E.CourseID = C.CourseID
  9  INNER JOIN Faculty F
 10  ON C.FacultyID = F.FacultyID
 11  ORDER BY S.Name;

STUDENTNAME               COURSENAME                          FACULTYNAME
------------------------- ----------------------------------- ------------------------------
Jyoti Kumari              Data Structures                     Prof. M. P. Singh
Mili                      Python for Data Science             Prof. Sujit Kumar
Monalisha                 Database Management Systems         Prof. E. Haque
Neha Kumari               Introduction to Artificial Intellig Dr. Prity Kumari Choudhary
                          ence

Nidhi Kumari              Introduction to Artificial Intellig Dr. Prity Kumari Choudhary
                          ence

Nidhi Kumari              Machine Learning                    Dr. Prity Kumari Choudhary
Priya Kumari              Engineering Mechanics               Prof. Md. Hafeezullah
Rahul Ranjan              Thermodynamics                      Prof. Md. Hafeezullah
Ravi Kumar                Thermodynamics                      Prof. Md. Hafeezullah
Suman Kumar               Electrical Machines                 Prof. Sujit Kumar

10 rows selected.


SQL> SET LINESIZE 200;
SQL> SET PAGESIZE 100;
SQL>
SQL> COLUMN CourseName FORMAT A45;
SQL> COLUMN Name FORMAT A35;
SQL>
SQL> SELECT C.CourseName,
  2         C.Credits,
  3         F.Name
  4  FROM Course C
  5  INNER JOIN Faculty F
  6  ON C.FacultyID = F.FacultyID
  7  ORDER BY C.CourseName;

COURSENAME                                       CREDITS NAME
--------------------------------------------- ---------- -----------------------------------
Computer Networks                                      3 Prof. E. Haque
Data Structures                                        4 Prof. M. P. Singh
Database Management Systems                            4 Prof. E. Haque
Electrical Machines                                    4 Prof. Sujit Kumar
Engineering Mechanics                                  3 Prof. Md. Hafeezullah
Introduction to Artificial Intelligence                4 Dr. Prity Kumari Choudhary
Machine Learning                                       4 Dr. Prity Kumari Choudhary
Operating Systems                                      4 Prof. M. P. Singh
Python for Data Science                                3 Prof. Sujit Kumar
Thermodynamics                                         4 Prof. Md. Hafeezullah

10 rows selected.


SQL> SELECT C.CourseName
  2  FROM Course C
  3  INNER JOIN Faculty F
  4  ON C.DepartmentID = F.DepartmentID
  5  WHERE F.FacultyID = '201';

COURSENAME
---------------------------------------------
Data Structures
Database Management Systems
Operating Systems
Computer Networks


SQL> SELECT F.Name, F.Designation, C.CourseName
  2  FROM Faculty F
  3  INNER JOIN Course C
  4  ON F.DepartmentID = C.DepartmentID;

NAME                                DESIGNATION                    COURSENAME
----------------------------------- ------------------------------ ---------------------------------------------
Prof. M. P. Singh                   Professor                      Data Structures
Prof. E. Haque                      Professor                      Data Structures
Prof. M. P. Singh                   Professor                      Database Management Systems
Prof. E. Haque                      Professor                      Database Management Systems
Prof. M. P. Singh                   Professor                      Operating Systems
Prof. E. Haque                      Professor                      Operating Systems
Prof. M. P. Singh                   Professor                      Computer Networks
Prof. E. Haque                      Professor                      Computer Networks
Dr. Prity Kumari Choudhary          Professor                      Introduction to Artificial Intelligence
Prof. Sujit Kumar                   Professor                      Introduction to Artificial Intelligence
Dr. Prity Kumari Choudhary          Professor                      Machine Learning
Prof. Sujit Kumar                   Professor                      Machine Learning
Dr. Prity Kumari Choudhary          Professor                      Python for Data Science
Prof. Sujit Kumar                   Professor                      Python for Data Science
Prof. Md. Hafeezullah               Professor                      Electrical Machines
Md. Izhar                           Professor                      Electrical Machines
Manisha Kumari                      Professor                      Thermodynamics
Dr. Mishra                          Professor                      Thermodynamics
Amit Kumar                          Professor                      Engineering Mechanics
Arun Kumar                          Professor                      Engineering Mechanics

20 rows selected.


SQL> SELECT S.Name, C.CourseName
  2  FROM Student S
  3  INNER JOIN Enrollment E
  4  ON S.StudentID = E.StudentID
  5  INNER JOIN Course C
  6  ON E.CourseID = C.CourseID;

NAME                                COURSENAME
----------------------------------- ---------------------------------------------
Jyoti Kumari                        Data Structures
Monalisha                           Database Management Systems
Nidhi Kumari                        Introduction to Artificial Intelligence
Neha Kumari                         Introduction to Artificial Intelligence
Nidhi Kumari                        Machine Learning
Mili                                Python for Data Science
Suman Kumar                         Electrical Machines
Ravi Kumar                          Thermodynamics
Rahul Ranjan                        Thermodynamics
Priya Kumari                        Engineering Mechanics

10 rows selected.

SQL> SELECT S.Name, C.CourseName, E.Semester
  2  FROM Student S
  3  INNER JOIN Enrollment E
  4  ON S.StudentID = E.StudentID
  5  INNER JOIN Course C
  6  ON E.CourseID = C.CourseID;

NAME                                COURSENAME                                    SEMESTER
----------------------------------- --------------------------------------------- ----------
Jyoti Kumari                        Data Structures                               Sem IV
Monalisha                           Database Management Systems                   Sem IV
Nidhi Kumari                        Introduction to Artificial Intelligence       Sem III
Neha Kumari                         Introduction to Artificial Intelligence       Sem II
Nidhi Kumari                        Machine Learning                              Sem III
Mili                                Python for Data Science                       Sem II
Suman Kumar                         Electrical Machines                           Sem IV
Ravi Kumar                          Thermodynamics                                Sem III
Rahul Ranjan                        Thermodynamics                                Sem IV
Priya Kumari                        Engineering Mechanics                         Sem II

10 rows selected.

SQL> SELECT S.Name, C.CourseName, E.Grade
  2  FROM Student S
  3  INNER JOIN Enrollment E
  4  ON S.StudentID = E.StudentID
  5  INNER JOIN Course C
  6  ON E.CourseID = C.CourseID
  7  WHERE E.Semester = 'Semester 4';

no rows selected


SQL> SELECT C.CourseName
  2  FROM Student S
  3  INNER JOIN Enrollment E
  4  ON S.StudentID = E.StudentID
  5  INNER JOIN Course C
  6  ON E.CourseID = C.CourseID
  7  WHERE S.StudentID = '401';

COURSENAME
---------------------------------------------
Data Structures

SQL> SELECT S.Name, S.DepartmentID, C.CourseName
  2  FROM Student S
  3  INNER JOIN Course C
  4  ON S.DepartmentID = C.DepartmentID;

NAME                                DEPARTMENTID COURSENAME
----------------------------------- ------------ ---------------------------------------------
Jyoti Kumari                                 101 Data Structures
Monalisha                                    101 Data Structures
Jyoti Kumari                                 101 Database Management Systems
Monalisha                                    101 Database Management Systems
Jyoti Kumari                                 101 Operating Systems
Monalisha                                    101 Operating Systems
Jyoti Kumari                                 101 Computer Networks
Monalisha                                    101 Computer Networks
Nidhi Kumari                                 102 Introduction to Artificial Intelligence
Mili                                         102 Introduction to Artificial Intelligence
Neha Kumari                                  102 Introduction to Artificial Intelligence
Nidhi Kumari                                 102 Machine Learning
Mili                                         102 Machine Learning
Neha Kumari                                  102 Machine Learning
Nidhi Kumari                                 102 Python for Data Science
Mili                                         102 Python for Data Science
Neha Kumari                                  102 Python for Data Science
Suman Kumar                                  103 Electrical Machines
Anjali Kumari                                103 Electrical Machines
Ravi Kumar                                   104 Thermodynamics
Rahul Ranjan                                 104 Thermodynamics
Priya Kumari                                 105 Engineering Mechanics

22 rows selected.


SQL> SELECT C.DepartmentId, C.CourseNAme
  2  FROM Course C
  3  ORDER BY C.DepartmentID;

DEPARTMENTID COURSENAME
------------ ---------------------------------------------
         101 Data Structures
         101 Database Management Systems
         101 Operating Systems
         101 Computer Networks
         102 Introduction to Artificial Intelligence
         102 Python for Data Science
         102 Machine Learning
         103 Electrical Machines
         104 Thermodynamics
         105 Engineering Mechanics

10 rows selected.

SQL> SELECT F.Name, F.DepartmentID
  2  FROM Faculty F;

NAME                                DEPARTMENTID
----------------------------------- ------------
Prof. M. P. Singh                            101
Prof. E. Haque                               101
Dr. Prity Kumari Choudhary                   102
Prof. Sujit Kumar                            102
Prof. Md. Hafeezullah                        103
Md. Izhar                                    103
Manisha Kumari                               104
Dr. Mishra                                   104
Amit Kumar                                   105
Arun Kumar                                   105

10 rows selected.

SQL> SELECT S.Name, C.CourseName
  2  FROM Student S
  3  INNER JOIN Enrollment E
  4  ON S.StudentId=E.StudentID
  5  INNER JOIN Course C
  6  ON E.CourseID=C.CourseID
  7  WHERE S.DepartmentID='101';

NAME                                COURSENAME
----------------------------------- ---------------------------------------------
Jyoti Kumari                        Data Structures
Monalisha                           Database Management Systems

SQL> SELECT S.Name, C.CourseName
  2  FROM Student S
  3  INNER JOIN Enrollment E
  4  ON S.StudentID=E.StudentID
  5  INNER JOIN Course C
  6  ON E.CourseID=C.CourseID
  7  ORDER By S.Name ASC;

NAME                                COURSENAME
----------------------------------- ---------------------------------------------
Jyoti Kumari                        Data Structures
Mili                                Python for Data Science
Monalisha                           Database Management Systems
Neha Kumari                         Introduction to Artificial Intelligence
Nidhi Kumari                        Introduction to Artificial Intelligence
Nidhi Kumari                        Machine Learning
Priya Kumari                        Engineering Mechanics
Rahul Ranjan                        Thermodynamics
Ravi Kumar                          Thermodynamics
Suman Kumar                         Electrical Machines

10 rows selected.


SQL> SELECT F.Name, C.CourseName
  2  FROM Faculty F
  3  INNER JOIN Course C
  4  ON F.DepartmentID = C.DepartmentID
  5  ORDER BY C.Credits DESC;

NAME                                COURSENAME
----------------------------------- ---------------------------------------------
Prof. M. P. Singh                   Data Structures
Prof. E. Haque                      Data Structures
Dr. Mishra                          Thermodynamics
Manisha Kumari                      Thermodynamics
Md. Izhar                           Electrical Machines
Prof. Md. Hafeezullah               Electrical Machines
Prof. Sujit Kumar                   Machine Learning
Prof. M. P. Singh                   Database Management Systems
Prof. E. Haque                      Database Management Systems
Prof. M. P. Singh                   Operating Systems
Prof. E. Haque                      Operating Systems
Dr. Prity Kumari Choudhary          Introduction to Artificial Intelligence
Prof. Sujit Kumar                   Introduction to Artificial Intelligence
Dr. Prity Kumari Choudhary          Machine Learning
Prof. M. P. Singh                   Computer Networks
Prof. Sujit Kumar                   Python for Data Science
Dr. Prity Kumari Choudhary          Python for Data Science
Amit Kumar                          Engineering Mechanics
Prof. E. Haque                      Computer Networks
Arun Kumar                          Engineering Mechanics

20 rows selected.

SQL> SELECT C.CourseName, COUNT(E.StudentID) AS Total_Students
  2  FROM Course C
  3  INNER JOIN Enrollment E
  4  ON C.CourseID = E.CourseID
  5  GROUP BY C.CourseName;

COURSENAME                                    TOTAL_STUDENTS
--------------------------------------------- --------------
Data Structures                                            1
Database Management Systems                                1
Introduction to Artificial Intelligence                    2
Machine Learning                                           1
Python for Data Science                                    1
Electrical Machines                                        1
Thermodynamics                                             2
Engineering Mechanics                                      1

8 rows selected.

SQL> SELECT F.Name, COUNT(C.CourseID) AS Total_Courses
  2  FROM Faculty F
  3  INNER JOIN Course C
  4  ON F.DepartmentID = C.DepartmentID
  5  GROUP BY F.Name;

NAME                                TOTAL_COURSES
----------------------------------- -------------
Prof. M. P. Singh                               4
Prof. E. Haque                                  4
Dr. Prity Kumari Choudhary                      3
Prof. Sujit Kumar                               3
Prof. Md. Hafeezullah                           1
Md. Izhar                                       1
Manisha Kumari                                  1
Dr. Mishra                                      1
Amit Kumar                                      1
Arun Kumar                                      1

10 rows selected.

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

SQL> SELECT C.CourseName, MAX(E.Grade) AS Max_Grade
  2  FROM Course C
  3  INNER JOIN Enrollment E
  4  ON C.CourseID = E.CourseID
  5  GROUP BY C.CourseName;

COURSENAME                                    MAX_G
--------------------------------------------- -----
Data Structures                               A
Database Management Systems                   B+
Introduction to Artificial Intelligence       A
Machine Learning                              A-
Python for Data Science                       B+
Electrical Machines                           B
Thermodynamics                                B+
Engineering Mechanics                         A

8 rows selected.




SQL> INSERT INTO Department VALUES (101, 'Computer Science & Engineering', 'Block A');

1 row created.

SQL> INSERT INTO Department VALUES (102, 'Artificial Intelligence & Machine Learning', 'Block B');

1 row created.

SQL> INSERT INTO Department VALUES (103, 'Electrical Engineering', 'Block C');

1 row created.

SQL> INSERT INTO Department VALUES (104, 'Mechanical Engineering', 'Block D');

1 row created.

SQL> INSERT INTO Department VALUES (105, 'Civil Engineering', 'Block E');

1 row created.

SQL> COMMIT;

Commit complete.

SQL> SELECT *FROM Department;

DEPARTMENTID DEPARTMENTNAME
------------ --------------------------------------------------
OFFICELOCATION
--------------------------------------------------
         101 Computer Science & Engineering
Block A

         102 Artificial Intelligence & Machine Learning
Block B

         103 Electrical Engineering
Block C


DEPARTMENTID DEPARTMENTNAME
------------ --------------------------------------------------
OFFICELOCATION
--------------------------------------------------
         104 Mechanical Engineering
Block D

         105 Civil Engineering
Block E


SQL> INSERT INTO Faculty VALUES (201, 'Prof. M. P. Singh', 'Professor', 'singhmurlidhar@gmail.com', 101);

1 row created.

SQL> INSERT INTO Faculty VALUES (202, 'Prof. E. Haque', 'Professor', 'haque@gmail.com', 101);

1 row created.

SQL> INSERT INTO Faculty VALUES (203, 'Dr. Prity Kumari Choudhary', 'Professor', 'pritychoudhary@gmail.com', 102);

1 row created.

SQL> INSERT INTO Faculty VALUES (204, 'Prof. Sujit Kumar', 'Professor', 'sujitkumar@gmail.com', 102);

1 row created.

SQL> INSERT INTO Faculty VALUES (205, 'Prof. Md. Hafeezullah', 'Professor', 'hafeezullahbpmce@gmail.com', 103);

1 row created.

SQL> INSERT INTO Faculty VALUES (206, 'Md. Izhar', 'Professor', 'mdizhar@gmail.com', 103);

1 row created.

SQL> INSERT INTO Faculty VALUES (207, 'Manisha Kumari', 'Professor', 'manisha@bpmce.ac.in', 104);

1 row created.

SQL> INSERT INTO Faculty VALUES (208, 'Dr. Mishra', 'Professor', 'rmishra@bpmce.ac.in', 104);

1 row created.

SQL> INSERT INTO Faculty VALUES (209, 'Amit Kumar', 'Professor', 'amit@bpmce.ac.in', 105);

1 row created.

SQL> INSERT INTO Faculty VALUES (210, 'Arun Kumar', 'Professor', 'arunkumar@bpmce.ac.in', 105);

1 row created.

SQL> COMMIT;

Commit complete.

SQL> SELECT *FROM Faculty;

 FACULTYID NAME
---------- --------------------------------------------------
DESIGNATION
------------------------------
EMAIL                                              DEPARTMENTID
-------------------------------------------------- ------------
       201 Prof. M. P. Singh
Professor
singhmurlidhar@gmail.com                                    101

       202 Prof. E. Haque
Professor
haque@gmail.com                                             101

 FACULTYID NAME
---------- --------------------------------------------------
DESIGNATION
------------------------------
EMAIL                                              DEPARTMENTID
-------------------------------------------------- ------------

       203 Dr. Prity Kumari Choudhary
Professor
pritychoudhary@gmail.com                                    102

       204 Prof. Sujit Kumar
Professor

 FACULTYID NAME
---------- --------------------------------------------------
DESIGNATION
------------------------------
EMAIL                                              DEPARTMENTID
-------------------------------------------------- ------------
sujitkumar@gmail.com                                        102

       205 Prof. Md. Hafeezullah
Professor
hafeezullahbpmce@gmail.com                                  103

       206 Md. Izhar

 FACULTYID NAME
---------- --------------------------------------------------
DESIGNATION
------------------------------
EMAIL                                              DEPARTMENTID
-------------------------------------------------- ------------
Professor
mdizhar@gmail.com                                           103

       207 Manisha Kumari
Professor
manisha@bpmce.ac.in                                         104


 FACULTYID NAME
---------- --------------------------------------------------
DESIGNATION
------------------------------
EMAIL                                              DEPARTMENTID
-------------------------------------------------- ------------
       208 Dr. Mishra
Professor
rmishra@bpmce.ac.in                                         104

       209 Amit Kumar
Professor
amit@bpmce.ac.in                                            105

 FACULTYID NAME
---------- --------------------------------------------------
DESIGNATION
------------------------------
EMAIL                                              DEPARTMENTID
-------------------------------------------------- ------------

       210 Arun Kumar
Professor
arunkumar@bpmce.ac.in                                       105


10 rows selected.

SQL> INSERT INTO Course VALUES (301, 'Data Structures', 4, 101, 201);

1 row created.

SQL> INSERT INTO Course VALUES (302, 'Database Management Systems', 4, 101, 202);

1 row created.

SQL> INSERT INTO Course VALUES (303, 'Operating Systems', 4, 101, 201);

1 row created.

SQL> INSERT INTO Course VALUES (304, 'Computer Networks', 3, 101, 202);

1 row created.

SQL> INSERT INTO Course VALUES (305, 'Introduction to Artificial Intelligence', 4, 102, 203);

1 row created.

SQL> INSERT INTO Course VALUES (306, 'Machine Learning', 4, 102, 203);

1 row created.

SQL> INSERT INTO Course VALUES (307, 'Python for Data Science', 3, 102, 204);

1 row created.

SQL> INSERT INTO Course VALUES (308, 'Electrical Machines', 4, 103, 204);

1 row created.

SQL> INSERT INTO Course VALUES (309, 'Thermodynamics', 4, 104, 205);

1 row created.

SQL> INSERT INTO Course VALUES (310, 'Engineering Mechanics', 3, 105, 205);

1 row created.

SQL> COMMIT;

Commit complete.

SQL> SELECT *FROM Course;

  COURSEID COURSENAME                                            CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENTID  FACULTYID
------------ ----------
       301 Data Structures                                             4
         101        201

       302 Database Management Systems                                 4
         101        202

       303 Operating Systems                                           4
         101        201


  COURSEID COURSENAME                                            CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENTID  FACULTYID
------------ ----------
       304 Computer Networks                                           3
         101        202

       305 Introduction to Artificial Intelligence                     4
         102        203

       306 Machine Learning                                            4
         102        203


  COURSEID COURSENAME                                            CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENTID  FACULTYID
------------ ----------
       307 Python for Data Science                                     3
         102        204

       308 Electrical Machines                                         4
         103        204

       309 Thermodynamics                                              4
         104        205


  COURSEID COURSENAME                                            CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENTID  FACULTYID
------------ ----------
       310 Engineering Mechanics                                       3
         105        205


10 rows selected.

SQL> INSERT INTO Student VALUES (401, 'Jyoti Kumari', DATE '2006-01-04', 'F', '9123456781', 101);

1 row created.

SQL> INSERT INTO Student VALUES (402, 'Monalisha', DATE '2003-08-20', 'F', '9123456782', 101);

1 row created.

SQL> INSERT INTO Student VALUES (403, 'Nidhi Kumari', DATE '2004-01-15', 'F', '9123456783', 102);

1 row created.

SQL> INSERT INTO Student VALUES (404, 'Mili', DATE '2003-11-10', 'F', '9123456784', 102);

1 row created.

SQL> INSERT INTO Student VALUES (405, 'Neha Kumari', DATE '2003-07-18', 'F', '9123456785', 102);

1 row created.

SQL> INSERT INTO Student VALUES (406, 'Suman Kumar', DATE '2004-03-22', 'M', '9123456786', 103);

1 row created.

SQL> INSERT INTO Student VALUES (407, 'Anjali Kumari', DATE '2003-09-05', 'F', '9123456787', 103);

1 row created.

SQL> INSERT INTO Student VALUES (408, 'Ravi Kumar', DATE '2003-12-30', 'M', '9123456788', 104);

1 row created.

SQL> INSERT INTO Student VALUES (409, 'Rahul Ranjan', DATE '2004-02-14', 'M', '9123456789', 104);

1 row created.

SQL> INSERT INTO Student VALUES (410, 'Priya Kumari', DATE '2003-06-25', 'F', '9123456790', 105);

1 row created.

SQL> COMMIT;

Commit complete.

SQL> SELECT *FROM Student;

 STUDENTID NAME                                               DATEOFBIR G
---------- -------------------------------------------------- --------- -
CONTACTNUMBER   DEPARTMENTID
--------------- ------------
       401 Jyoti Kumari                                       04-JAN-06 F
9123456781               101

       402 Monalisha                                          20-AUG-03 F
9123456782               101

       403 Nidhi Kumari                                       15-JAN-04 F
9123456783               102


 STUDENTID NAME                                               DATEOFBIR G
---------- -------------------------------------------------- --------- -
CONTACTNUMBER   DEPARTMENTID
--------------- ------------
       404 Mili                                               10-NOV-03 F
9123456784               102

       405 Neha Kumari                                        18-JUL-03 F
9123456785               102

       406 Suman Kumar                                        22-MAR-04 M
9123456786               103


 STUDENTID NAME                                               DATEOFBIR G
---------- -------------------------------------------------- --------- -
CONTACTNUMBER   DEPARTMENTID
--------------- ------------
       407 Anjali Kumari                                      05-SEP-03 F
9123456787               103

       408 Ravi Kumar                                         30-DEC-03 M
9123456788               104

       409 Rahul Ranjan                                       14-FEB-04 M
9123456789               104


 STUDENTID NAME                                               DATEOFBIR G
---------- -------------------------------------------------- --------- -
CONTACTNUMBER   DEPARTMENTID
--------------- ------------
       410 Priya Kumari                                       25-JUN-03 F
9123456790               105


10 rows selected.

SQL> INSERT INTO Enrollment VALUES (501, 401, 301, 'Sem IV', 'A');

1 row created.

SQL> INSERT INTO Enrollment VALUES (502, 402, 302, 'Sem IV', 'B+');

1 row created.

SQL> INSERT INTO Enrollment VALUES (503, 403, 305, 'Sem III', 'A');

1 row created.

SQL> INSERT INTO Enrollment VALUES (504, 403, 306, 'Sem III', 'A-');

1 row created.

SQL> INSERT INTO Enrollment VALUES (505, 404, 307, 'Sem II', 'B+');

1 row created.

SQL> INSERT INTO Enrollment VALUES (506, 405, 305, 'Sem II', 'A');

1 row created.

SQL> INSERT INTO Enrollment VALUES (507, 406, 308, 'Sem IV', 'B');

1 row created.

SQL> INSERT INTO Enrollment VALUES (508, 408, 309, 'Sem III', 'B+');

1 row created.

SQL> INSERT INTO Enrollment VALUES (509, 409, 309, 'Sem IV', 'A-');

1 row created.

SQL> INSERT INTO Enrollment VALUES (510, 410, 310, 'Sem II', 'A');

1 row created.

SQL> COMMIT;

Commit complete.

SQL> SELECT *FROM Enrollment;

ENROLLMENTID  STUDENTID   COURSEID SEMESTER   GRADE
------------ ---------- ---------- ---------- -----
         501        401        301 Sem IV     A
         502        402        302 Sem IV     B+
         503        403        305 Sem III    A
         504        403        306 Sem III    A-
         505        404        307 Sem II     B+
         506        405        305 Sem II     A
         507        406        308 Sem IV     B
         508        408        309 Sem III    B+
         509        409        309 Sem IV     A-
         510        410        310 Sem II     A

10 rows selected.

SQL>
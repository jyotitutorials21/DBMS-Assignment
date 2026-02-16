
SQL> CREATE TABLE Department (
  2      DepartmentID NUMBER PRIMARY KEY,
  3      DepartmentName VARCHAR2(50) NOT NULL,
  4      OfficeLocation VARCHAR2(50)
  5  );

Table created

SQL> CREATE TABLE Faculty (
  2      FacultyID NUMBER PRIMARY KEY,
  3      Name VARCHAR2(50) NOT NULL,
  4      Designation VARCHAR2(30),
  5      Email VARCHAR2(50) UNIQUE,
  6      DepartmentID NUMBER,
  7      CONSTRAINT fk_faculty_dept
  8          FOREIGN KEY (DepartmentID)
  9          REFERENCES Department(DepartmentID)
 10  );

Table created.
SQL> CREATE TABLE Student (
  2      StudentID NUMBER PRIMARY KEY,
  3      Name VARCHAR2(50) NOT NULL,
  4      DateOfBirth DATE,
  5      Gender CHAR(1),
  6      ContactNumber VARCHAR2(15),
  7      DepartmentID NUMBER,
  8      CONSTRAINT fk_student_dept
  9          FOREIGN KEY (DepartmentID)
 10          REFERENCES Department(DepartmentID)
 11  );

Table created.

SQL> CREATE TABLE Course (
  2      CourseID NUMBER PRIMARY KEY,
  3      CourseName VARCHAR2(50) NOT NULL,
  4      Credits NUMBER(2),
  5      DepartmentID NUMBER,
  6      FacultyID NUMBER,
  7      CONSTRAINT fk_course_dept
  8          FOREIGN KEY (DepartmentID)
  9          REFERENCES Department(DepartmentID),
 10      CONSTRAINT fk_course_faculty
 11          FOREIGN KEY (FacultyID)
 12          REFERENCES Faculty(FacultyID)
 13  );

Table created.

SQL> CREATE TABLE Enrollment (
  2      EnrollmentID NUMBER PRIMARY KEY,
  3      StudentID NUMBER,
  4      CourseID NUMBER,
  5      Semester VARCHAR2(10),
  6      Grade VARCHAR2(5),
  7      CONSTRAINT fk_enroll_student
  8          FOREIGN KEY (StudentID)
  9          REFERENCES Student(StudentID),
 10      CONSTRAINT fk_enroll_course
 11          FOREIGN KEY (CourseID)
 12          REFERENCES Course(CourseID)
 13  );

Table created.
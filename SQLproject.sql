--creating Department table
CREATE TABLE Department
(
  dept_id NUMBER PRIMARY KEY ,
  dept_name VARCHAR(10) NOT NULL,
  HOD VARCHAR(10)
);

--creating Student table

CREATE TABLE Student
(
  sid NUMBER PRIMARY KEY,
  sname VARCHAR(30) NOT NULL,
  smajor VARCHAR(20) NOT NULL,
  sgender CHAR(1) NOT NULL,
  sphone_no NUMBER(10) NULL,
  semail VARCHAR(20)NOT NULL,
  hire_date DATE DEFAULT SYSDATE NOT NULL,
  GPA FLOAT NOT NULL
);

--creating Room table
CREATE TABLE Room
(
  rid NUMBER PRIMARY KEY,
  type VARCHAR(10) NOT NULL,
  building VARCHAR(10) NOT NULL,
  capacity NUMBER NULL
);

--creating Teacher table
CREATE TABLE Teacher
(
  tid NUMBER PRIMARY KEY,
  tname VARCHAR(10) NOT NULL,
  tphone_no NUMBER(10)NOT NULL,
  temail VARCHAR(20)NOT NULL,
  tgender CHAR(1) NOT NULL,
  tmajor VARCHAR(20) NOT NULL,
  salary NUMBER(10) NOT NULL,
  dept_id NUMBER NOT NULL,
 CONSTRAINT debt_id_fk FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);
--creating Course table
CREATE TABLE Course
(
  cid NUMBER PRIMARY KEY,
  cname VARCHAR(10) NOT NULL
);
-- Change the size
alter table course modify (cname VARCHAR(50));
  
--creating Student_course table
CREATE TABLE Student_course(
cid NUMBER NOT NULL,
  sid NUMBER NOT NULL,
  CONSTRAINT cid_fk FOREIGN KEY (cid) REFERENCES Course(cid),
 CONSTRAINT sid_fk FOREIGN KEY (sid) REFERENCES Student(sid)
);
--creating Section table
CREATE TABLE Section
(
  snumber NUMBER PRIMARY KEY,
  stime DATE NOT NULL,
  sdate DATE NOT NULL,
  tid NUMBER NOT NULL,
  cid NUMBER NOT NULL,
  rid NUMBER(10) NOT NULL,
  CONSTRAINT rid_fk FOREIGN KEY (rid) REFERENCES Room(rid),
  CONSTRAINT tid1_fk FOREIGN KEY (tid) REFERENCES Teacher(tid),
  CONSTRAINT cid1_fk FOREIGN KEY (cid) REFERENCES Course(cid)
);

--Modifing the size of column
alter table Section modify (stime varchar(50));

-- Displaying the tables structure
desc Department
desc Student
desc Room
desc Teacher
desc Course
desc Student_course
desc Section


--Populate data in Department table
 insert into Department values (100,'IT','khaled');
 insert into Department values (101,'Busniss','Salim');
 insert into Department values (102,'Engneerig','Mohammed');
 insert into Department values (103,'Desgin','Ahmed');
insert into Department values (104,'English','Fatma');


--Populate data in Course table
insert into Course values (200,'Software');
insert into Course values (201,'Network');
insert into Course values (202,'Managment');
insert into Course values (203,'Electric engineering');
insert into Course values (204,'English language');
insert into Course values (205,'photographic');

--Populate data in Room table
insert into Room values (300,'Lecture','A',50);
insert into Room values (301,'Lab','B',30);
insert into Room values (302,'Lecture','C',25);
insert into Room values (303,'Lab','D',30);
insert into Room values (304,'Lecture','E',25);

--Populate data in Student table
insert into Student values (400,'Khaula','Network','F',9933992,'abc@oracle.com','20-SEP-16',3.50);
insert into Student values (401,'Wejdan','Managment','F',9933966,'ab@oracle.com','20-SEP-17',4.00);
insert into Student values (402,'Fatma','Software','F',9933988,'f@oracle.com','20-SEP-18',3.00);
insert into Student values (403,'Ahmed','Electric engineering','M',9933955,'A@oracle.com','20-SEP-19',1.50);
insert into Student values (404,'Salim','English','M',9933900,'S@oracle.com','20-SEP-15',2.50);
insert into Student values (405,'Hamed','Design','M',9963900,'H@oracle.com','20-SEP-14',3.50);


--Populate data in Teacher table
insert into Teacher values (500,'Arif',99887766,'A@gmail.com','M','Network',5000,100);
insert into Teacher values (501,'Rashid',99887860,'Ra@gmail.com','M','Software',1230,100);
insert into Teacher values (502,'Maryam',99887755,'m@gmail.com','F','HR',1500,101);
insert into Teacher values (503,'Omar',99887766,'O@gmail.com','M','Programming',1000,100);
insert into Teacher values (504,'Sara',99887700,'S@gmail.com','F','Managment',1500,101);
insert into Teacher values (505,'Ahmed',99887722,'Ah@gmail.com','M','Photographic',1200,103);
insert into Teacher values (506,'Fatma',99887888,'F@gmail.com','F','Accounting',1120,101);
insert into Teacher values (507,'Faisal',99887744,'Fa@gmail.com','M','Research',2500,104);
insert into Teacher values (508,'Adnan',99887766,'Ad@gmail.com','M','Elec',1800,102);
insert into Teacher values (509,'Mohammed',99887022,'mm@gmail.com','M','Art',1150,103);
insert into Teacher values (510,'Huda',99087766,'hu@gmail.com','F','Design',950,103);
insert into Teacher values (511,'Jwad',945847766,'j@gmail.com','M','Translation',2000,104);
insert into Teacher values (512,'Salim',99870766,'sa@gmail.com','M','Marketing',2300,101);
insert into Teacher values (513,'Ahmed',99810766,'Ahmed@gmail.com','M','Security',1100,100);
insert into Teacher values (514,'Wejdan',91187766,'wj@gmail.com','F','Renewable energy',900,102);
insert into Teacher values (515,'Mira',99007766,'mi@gmail.com','F','Routing',850,100);
insert into Teacher values (516,'Aisha',99887729,'Ai@gmail.com','F','Civil engineering',1600,102);
insert into Teacher values (517,'Marya',99887750,'ma@gmail.com','F','Chemical engineering',1500,102);
insert into Teacher values (518,'Saif',99887710,'saif@gmail.com','M','IOT',1400,100);
insert into Teacher values (519,'Safa',99887123,'saf@gmail.com','F','AI',3000,100);


alter table Section modify ( stime varchar(20));

--Populate data in Section table
insert into Section  values (600,'10:00-12:00','12-OCT-20',519,200,300);
insert into Section  values (601,'8:00-10:00','13-OCT-20',515,201,301);
insert into Section  values (602,'2:00-4:00','14-OCT-20',510,205,300);
insert into Section  values (603,'12:00-2:00','15-OCT-20',502,202,302);
insert into Section  values (604,'10:00-11:00','16-OCT-20',500,202,304);

--Populate data in Student_course table
insert into Student_course values(201,400);
insert into Student_course values(202,401);
insert into Student_course values(200,402);
insert into Student_course values(204,404);
insert into Student_course values(205,404);
insert into Student_course values(201,404);

--Investigate the data of tables
select * from Department
select * from Student
select * from Room
select * from Teacher
select * from Course
select * from Student_course
select * from Section

--Arithmetic Expressions
*************************************************************************************
select salary , salary*(salary + 100) Increament
from Teacher;

--use of concatenation operator + literal character string + defining a column Alias 
*************************************************************************************
select sname || ' major in ' || smajor as "Student major"
from Student ;

--Alternative Quote(q) operator
**************************************************************************************
select tname ||' '|| q'[work in department]'|| ' ' || dept_id
from Teacher ;

--eliminating the duplicate rows by using (DISTINCT)
**************************************************************************************
select DISTINCT dept_id 
from Teacher;
 
--Restrict the rows that are returned by using (where) clause + Comparison Operator:
**************************************************************************************
select * from Teacher 
where dept_id = 100;

-- both 2 Conditions should be true
--first sid must be either 401,402 or 404 
--second GPA must be more than 3

select sname , smajor , GPA
from Student
where sid IN (401,402,404)
AND GPA > 3 ;

-- show all student who don't belong to (Network and English)
***************************************************************************************
select sname , smajor 
from Student
where smajor NOT IN ('Network' , 'English');

-- like operator % 
****************************************************************************************
select * from Student 
where sname like '_a%';

--Comparison Operator + sort the retrieved rows with (ORDER BY) clause
****************************************************************************************
select * from room
where building = 'A'
OR building = 'D'
AND capacity >= 30
order by rid ;


--specify the number of rows return with the (Fetch_first)
*****************************************************************************************
select tname ,tmajor 
from Teacher  
order by 1 
fetch first 5 rows only;

--specify that returned rows begin with a row after the first row (offset)
****************************************************************************************** 
select tname ,tmajor 
from Teacher  
order by 1 
offset 5 rows fetch next 5 rows only;

--with ties 
********************************************************************************************
select sname , smajor , GPA 
from student
order by GPA DESC
fetch first 2 rows with ties;

--using substitution variables (&)
*********************************************************************************************
select cid , cname 
from Course 
where cid = &cid;

--using substitution variables double-ampersand(&&)
--for example column_name = smajor and oreder by sid
***********************************************************************************************
select sid ,sname , &&column_name
from Student 
order by &column_name

--DEFINE command create and assign a value to a variable 
--the user is not promptd to enter value for "tid "
-- UNDEFINE tid to remove a variable
***********************************************************************************************
define tid = 500
select tid , tname , tmajor 
from Teacher 
where tid = &tid;

--using VERFY command 
--set verfy on to display a new and old output
--set verfy off 
*************************************************************************************************
set verfy on 
select snumber , tid , rid
from Section 
where snumber = &snumber;
--------------------------------------------------------------------------------------------------

Conversion Function and Conditional expressions
--------------------------------------------------------------------------------------------------
-- To_char
-- Display student in wich year they hired?

select sid, sname, to_char(hire_date, 'YYYY') Year_hired 
from student;

-- display the salary of teacher

select tid, tname, to_char(salary, '$99,999.00') Salary
from teacher


--To_Date
-- Display the student name who was hired after 2017

select sid, sname, to_char(hire_date, 'DD-MONTH-YYYY')
from student
where hire_date >= to_date('01-Jan-17','DD-Mon-RR');


--Display student timetabe
select s.snumber, s.stime, s.sdate, c.cname, t.tname, s.rid
from
section s 
join course c 
on s.cid = c.cid
join teacher t
on s.tid = t.tid

-----------------------------------------------

-- Display TID, Tname, salary, department id, Department name and HoD to all Teachers.

--using natural join

select TID, Tname, salary, dept_id, Dept_name, Hod
from Teacher natural join department;


-- Display TID, Tname, salary, department id, Department name and HoD to all Teachersin department IT?

select TID, Tname, salary, dept_id, Dept_name, Hod
from Teacher natural join department
where Dept_id = 100;

--Retrieving Records with the USING Clause

select TID, Tname, salary,dept_id, Dept_name, Hod
from Teacher join department
using(dept_id);

--Creating Joins with the ON Clause

select t.TID, t.Tname, t.salary, t.dept_id, d.dept_id, d.Dept_name, d.Hod
from Teacher t join Department d
on (t.dept_id= d.dept_id);



--A three-way join is a join of three tables.

--display section number, teacher name, course name and room id?

select snumber, rid, tname, cname
from Section s 
join Teacher t
on s.tid = t.tid
join Course c
on s.cid = c.cid;


-- Use the AND clause or the WHERE clause to apply additional conditions
-- display section number, teacher name, course name and room id when teacher id =500?
50%

--AND

select snumber, rid, tname, cname
from Section s 
join Teacher t
on s.tid = t.tid
join Course c
on s.cid = c.cid
And s.tid = 500;



-- WHERE

select snumber, rid, tname, cname
from section s 
join teacher t
on s.tid = t.tid
join course c
on s.cid = c.cid
WHERE s.tid = 500;



-- Display teacher id, teacher name, salary, dept name of teachers who earn between 1000 and 2000?



select t.TID, t.Tname, t.salary, d.Dept_name
from Teacher t join department d
on t.salary between 1000 and 2000;


--LEFT OUTER JOIN



select t.tname, t.dept_id, d.dept_name
from teacher t left outer join department d
on (t.dept_id = d.dept_id);


-- RIGHT OUTER JOIN



select t.tname, t.dept_id, d.dept_name
from teacher t right outer join department d
on (t.dept_id = d.dept_id);


-- FULL OUTER JOIN
select t.tname, t.dept_id, d.dept_name
from teacher t full outer join department d
on (t.dept_id = d.dept_id);



-- Creating Cross Joins



select tname, dept_name
from teacher 
cross join department;

--VIEW
--Simple View

-- student Information

craete view stu_info
select sid, sname, semail, gpa
from student;



-- using colunm aliases
craete view stu_info_col
select sid, sname, semail, gpa, round((to_char(sysdate,'YYYY') - to_char(hire_date,'YYYY')),0) "Level"
from student;

select * from student;

-- with check option



create or replace view SecOfManag
as select * 
from section 
where cid = 202
with check option constraint SecOfManag1;

select * from SecOfManag;
-- With Read Only



create or replace view SecOfSoft
as select * 
from section 
where cid = 200
with Read Only;

select * from SecOfSoft;


--Add values to tables using &
 insert into Room (rid, type, building, capacity) values (&rid,'&type','&building',&capacity);
 select * from room;
 
 insert into Department values (&dept_id,'&dept_name','&HOD');
  select * from department;

--Updating rows in table
update Teacher 
set dept_id= 104
where tid=502;
--Update using & this will be more dynamic
update Room 
set building= '&building'
where rid= &rid;
select * from Room;
--Delete statement 
delete from Student
where sid= &EnterSid;

--Creating a new table from an existing table
create table student2
AS
select * from Student;

desc student2
select * from student2
--Creating a new table using subquery
create table dept_offic
AS
select tid, tname, salary*12 ANNSAL 
from Teacher
where dept_id=100;

select *  from dept_offic

--Set unused option
alter table dept_offic
set unused (tname);

alter table dept_offic
drop unused columns;

--Read-only and Read-write
alter table dept_offic Read only;
alter table dept_offic Read write;

--creating tables from an existing table 
create table Student_course2
as
select * from Student_course


--Deleting FORIGN KEY
alter table Student_course drop CONSTRAINT cid_fk;
--ON DELETE CASCADE OPTION-

alter table Student_course
add CONSTRAINT cid_fk FOREIGN KEY (cid) 
REFERENCES Course(cid)
on delete cascade;

--using savepoint 
insert into Student_course2 values(209,409);
savepoint W;

update Course set cname='Programmig' where cid=200;
savepoint Q;


select * from Course;

rollback to W;


--delete rows
delete from Student_course 
where cid= 201;
 
 rollback; --rollback to retrive data again (get data back)
 
 select * from Student_course





--using on delete set null option
alter table Teacher drop CONSTRAINT debt_id_fk;

alter table Teacher 
add CONSTRAINT debt_id_fk FOREIGN KEY (dept_id)
REFERENCES Department(dept_id)
on delete set null;

select * from department;
select * from Teacher;

--USING UNIQUE CONSTRAINT
ALTER TABLE Student 
ADD CONSTRAINT semail_unique UNIQUE( semail);

-- USING CHECK constraint 
ALTER TABLE Teacher
ADD CONSTRAINT salary_check CHECK (salary > 0);

--Check and Test the check constraint 
insert into Teacher values (520,'khaled',90007766,'Kha@gmail.com','M','Network',5000,100);


create table Room2
as
select * from Room;

--use truncate statement, remove all rows from table leaveing empty (structure will be there "intact")
create table Room3
as
select * from Room;
truncate table Room3;
rollback;

select * from Room3;


--trying delete
create table Room22
as
select * from Room;

--delete the table 
delete from Room22;
desc Room22;
select * from Room22;
insert into Room22 values (300,'Lecture','A',50);


--Insert new column in the middel

alter table Student modify (semail invisible, hire_date invisible, GPA invisible);
alter table Student add (address varchar(30));
alter table Student modify (semail visible, hire_date visible, GPA visible);
--Add new column to an existing table
alter table Teacher add (address number);
--Removing a column from an existing table
alter table Teacher drop column address;

--Use commit command to save changes
commit;
--drop table that they cannot be restored
--the object will be purged from recycle bin and will not be able to recover the table
drop table student2 purge;

--add&drop column
alter table Student_course add (scno number);
 alter table  Student_course drop column scno;

--Adding a constraint at later stage

ALTER TABLE Student_course ADD CONSTRAINT no_check
 CHECK (sid >200 );

--Enable and disable constrain
alter table Student_course Disable CONSTRAINT no_check;
alter table Student_course Enable CONSTRAINT no_check;

--Deferrable CONSTRAINT 
--DEFERRABLE INITIALLY IMMEDIATE

alter table Teacher
add constraint size_check
check (salary >= 500)
DEFERRABLE INITIALLY IMMEDIATE;

insert into Teacher values (522,'Hind',99000023,'Hi@gmail.com','F','AI',3290,100); --will check this 

--DEFERRABLE INITIALLY DEFERRED
alter table Teacher
add constraint size_check1
check (salary >= 500)
DEFERRABLE INITIALLY DEFERRED;

insert into Teacher values (525,'Hani',99001023,'Ha@gmail.com','M','AI',3200,100); --will check this 
 

--using set operator to fetch data
--using minus
select dept_id 
from department
minus
select dept_id
from Teacher
where INITCAP(tmajor) = 'Network';

--using intersect

select tid, tmajor,dept_id
from Teacher
intersect
select tid, tmajor,dept_id
from Teacher
where dept_id in(100,102);

--using union

select dept_id 
from department
union
select dept_id
from Teacher
where INITCAP(tmajor) = 'Network';


-- (DEPARTMENT)

--using UPPER, INITCAP AS single row  functions
Select UPPER (HOD) AS "Head of Department" ,  INITCAP(DEPT_NAME) AS "Department Name"
 from Department;

-- using COUNT AS aggregation function 
Select count(DEPT_NAME)
From Department;


--(Student)

-- using CONCAT ,INITCAP,ROUND single row functions AS nesting function
Select  CONCAT(INITCAP(SNAME), SMAJOR) as "Name - Major", ROUND(GPA)
From Student
Where SID IN (400, 402);

--using Max ,AVG  AS aggregation function
Select MAX(AVG( GPA))  as "Maximum GPA"
 from Student
Group by sname;

--(Room)

--using SUBSTR  AS single row functions 
Select SUBSTR(TYPE, 1,4) CLASS 
From Room ;

-- using AVG AS aggregation function
Select AVG (CAPACITY)
From Room 

--(Teacher)

-- using LPAD , MOD , LENGTH AS single row functions 
Select LPAD(MOD(SALARY, 500),5,'*') SALARY, LENGTH(TMAJOR) AS "MAJOR LENGTH"
From Teacher;
 


--(Course)

-- using CONCAT , UPPER AS single row functions
Select CONCAT ( CID ,UPPER(CNAME)) AS "ID : COURSE NAME"
From Course;

-- using COUNT(*) AS aggregation function 
Select  COUNT(*)
From Course;

--(Section)

--working with date
Select SNUMBER ,SDATE
From Section
WHERE SDATE <  '15-OCT-20';



--Creating sequence for department ID in Department table
CREATE SEQUENCE department_deptid_seq
INCREMENT BY 1
START WITH 105
MAXVALUE 999
NOCACHE
NOCYCLE;

--Creating sequence for Student ID in Student table
CREATE SEQUENCE student_sid_seq
INCREMENT BY 1
START WITH 405
MAXVALUE 999
NOCACHE
NOCYCLE;

--Creating sequence for Room ID in Room table
CREATE SEQUENCE room_rid_seq
INCREMENT BY 1
START WITH 305
MAXVALUE 999
NOCACHE
NOCYCLE;

--Creating sequence for Teacher ID in Teacher table
CREATE SEQUENCE teacher_tid_seq
INCREMENT BY 1
START WITH 520
MAXVALUE 999
NOCACHE
NOCYCLE;

--Creating sequence for Course ID in Course table
CREATE SEQUENCE course_cid_seq
INCREMENT BY 1
START WITH 206
MAXVALUE 999
NOCACHE
NOCYCLE;

--Creating sequence for Section Number in Section table
CREATE SEQUENCE section_snumber_seq
INCREMENT BY 1
START WITH 605
MAXVALUE 999
NOCACHE
NOCYCLE;

-- Insert a new department with ID from the sequence
insert into Department values (department_deptid_seq.NEXTVAL, 'New', 'Sultan');
-- Checking the inserted new department.
SELECT * FROM DEPARTMENT;
-- Checking the current value for the department ID sequence
SELECT department_deptid_seq.CURRVAL FROM dual;


-- Insert a new Student with ID from the sequence
insert into Student values (student_sid_seq.NEXTVAL, 'Mohammed', 'Business', 'M', 9900990, 'mohd@oracle.com', '20-SEP-17', 3.30);
-- Checking the inserted new Student.
SELECT * FROM Student;
-- Checking the current value for the Student ID sequence
SELECT student_sid_seq.CURRVAL FROM dual;


-- Insert a new Room with ID from the sequence
insert into Room values (room_rid_seq.NEXTVAL, 'Lecture', 'F', 25);
-- Checking the inserted new Room.
SELECT * FROM Room;
-- Checking the current value for the Room ID sequence
SELECT room_rid_seq.CURRVAL FROM dual;


-- Insert a new Teacher with ID from the sequence
insert into Teacher values (teacher_tid_seq.NEXTVAL, 'Kumar', 99886655, 'KM@gmail.com', 'M', 'Business', 5500, 105);
-- Checking the inserted new Teacher.
SELECT * FROM Teacher;
-- Checking the current value for the Teacher ID sequence
SELECT teacher_tid_seq.CURRVAL FROM dual;


-- Insert a new Course with ID from the sequence
insert into Course values (course_cid_seq.NEXTVAL, 'Business Studies');
-- Checking the inserted new Course.
SELECT * FROM Course;
-- Checking the current value for the Course ID sequence
SELECT course_cid_seq.CURRVAL FROM dual;


-- Insert a new Section with number from the sequence
insert into Section values (section_snumber_seq.NEXTVAL, '08:00-10:00', '17-OCT-20', 520, 206, 305);
-- Checking the inserted new Section.
SELECT * FROM Section;
-- Checking the current value for the Section number sequence
SELECT section_snumber_seq.CURRVAL FROM dual;


-- view all sequences details
SELECT sequence_name, min_value, max_value,
increment_by, last_number
FROM user_sequences;


-- Creating synonym for department table named dept
CREATE SYNONYM DEPT FOR DEPARTMENT;
SELECT * FROM DEPT;

-- Creating synonym for Student table 
CREATE SYNONYM S FOR Student;
SELECT * FROM S;

-- Creating synonym for Room table 
CREATE SYNONYM R FOR Room;
SELECT * FROM R;

-- Creating synonym for Teacher table 
CREATE SYNONYM T FOR Teacher;
SELECT * FROM T;

-- Creating synonym for Course table 
CREATE SYNONYM C FOR Course;
SELECT * FROM C;

-- Creating synonym for Student_course table 
CREATE SYNONYM SC FOR Student_course;
SELECT * FROM SC;

-- Creating synonym for Section table
CREATE SYNONYM SEC FOR Section;
SELECT * FROM SEC;


-- Index.
CREATE INDEX TNAME_IDX ON Teacher(TNAME);
SELECT INDEX_NAME, TABLE_NAME FROM USER_INDEXES WHERE TABLE_NAME = 'TEACHER';


-- viewing all student that have gender same as student Fatma and GPA greter than Fatma
SELECT * FROM STUDENT WHERE SGENDER = (SELECT SGENDER FROM STUDENT WHERE SNAME='Fatma') AND GPA > (SELECT GPA FROM STUDENT WHERE SNAME='Fatma');

-- Viewing all IT teachers details
SELECT * FROM TEACHER WHERE DEPT_ID = (SELECT DEPT_ID FROM DEPARTMENT WHERE DEPT_NAME='IT');

-- Viewing teacher details with group function minimum and maximum salary
SELECT TNAME, TMAJOR, SALARY FROM TEACHER WHERE SALARY = (SELECT MIN(SALARY) FROM TEACHER);
SELECT TNAME, TMAJOR, SALARY FROM TEACHER WHERE SALARY = (SELECT MAX(SALARY) FROM TEACHER);

-- view department salary details compared to department 102 minimum salary
SELECt DEPT_ID, MIN(SALARY), MAX(SALARY), AVG(SALARY) FROM TEACHER GROUP BY DEPT_ID HAVING MIN(SALARY) > (SELECT MIN(SALARY) FROM TEACHER WHERE DEPT_ID = 102);

-- selecting teachers based on multiple departements contains En
SELECT TNAME, TMAJOR, SALARY, DEPT_ID FROM TEACHER WHERE DEPT_ID IN (SELECT DEPT_ID FROM DEPARTMENT WHERE DEPARTMENT.DEPT_NAME like '%En%');


-- Using the ANY / ALL Operator in Multiple-Row Subqueries
SELECT * FROM STUDENT WHERE GPA < ANY (SELECT GPA FROM STUDENT WHERE SGENDER='F');
SELECT * FROM STUDENT WHERE GPA < ALL (SELECT GPA FROM STUDENT WHERE SGENDER='F');


-- Viewing Courses that have available sections
SELECT CID, CNAME FROM COURSE C
WHERE EXISTS
(SELECT CID FROM STUDENT_COURSE SC
WHERE (SC.CID=C.CID));

-- Viewing Courses that not having available sections
SELECT CID, CNAME FROM COURSE C
WHERE NOT EXISTS
(SELECT CID FROM STUDENT_COURSE SC
WHERE (SC.CID=C.CID));

--Adding comments to tables
comment on table Student IS 'Student Information';
--Adding comment to column
comment on column Room.capacity IS 'This contine number of students';



-- Complix Veiw using joining table
******************************************************************************************************* 


create or replace view Teacher_Sal 

as

select t.TID, t.Dept_id, t.Tname, t.salary, d.Dept_name

from Teacher t join department d

on (t.dept_id= d.dept_id)

select * from Teacher_Sal;


-- Complix Veiw using group by function
********************************************************************************************************
create or replace view dept_avg_sal
 as 
 select dept_id , round(AVG(salary),2) "avgsal" from Teacher
group by dept_id;


select * from dept_avg_sal;
select * from Teacher

**********************************************************************************************************

drop table Room cascade constraints;
drop table Teacher cascade constraints;
drop table Student cascade constraints;
drop table Department cascade constraints;
drop table Student_Course cascade constraints;
drop table Section cascade constraints;
drop table Course cascade constraints;



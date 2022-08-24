use arnabdb;	#database
#creating emp1 table 
create table emp1(
ID numeric(2),
ID_Name varchar(10),
Basic numeric(6,2),
Designation varchar(10),
Age numeric(2)
);
#altering emp1 table
alter table emp1 modify Basic integer(6);
alter table emp1 modify ID_Name varchar(15);
#creating emp_trainee table 
create table emp_trainee(
Emp_id numeric(2),
ID_Name varchar(10),
Basic numeric(6,2),
Designation varchar(10),
Age numeric(2)
);
#inserting values into emp1 table
insert into emp1 values
(1,'Ishan',6700,'Manager',24),
(2,'Rohit',6200,'Engineer',27),
(3,'Virat',6300,'Engineer',25),
(4,'Surya',6700,'Trainee',28),
(5,'Ravi',6230,'Trainee',26),
(6,'Sourav',7000,'Trainee',25);
#inserting values into emp_trainee table from emp1
insert into emp_trainee select * from emp1;
select * from emp1,emp_trainee;	#displaying two tables
#altering emp1 table
alter table emp1 add Skill varchar(15) after basic;
alter table emp1 add DOJ date after age;
#updating emp1 table skills column
update emp1 set Skills = 'java' where ID = 1;
update emp1 set Skills = 'Python' where ID = 2;
update emp1 set Skills = 'C++' where ID = 3;
update emp1 set Skills = 'SQL' where ID = 4;
update emp1 set Skills = 'java' where ID = 5;
update emp1 set Skills = 'Selenium' where ID = 6;
#updating emp1 table DOJ column
update emp1 set DOJ = '2022-02-05' where ID = 1;
update emp1 set DOJ = '2022-02-10' where ID = 2;
update emp1 set DOJ = '2022-02-15' where ID = 3;
update emp1 set DOJ = '2022-02-20' where ID = 4;
update emp1 set DOJ = '2022-02-22' where ID = 5;
update emp1 set DOJ = '2022-02-23' where ID = 6;
alter table emp_trainee modify Designation varchar(30); #altering emp_trainee table
#updating
update emp_trainee set Designation = 'Programmer_Trainee';
update emp1 set Skills = 'Python' where Designation = 'Trainee';
alter table emp1 modify ID varchar(5);	#altering emp1 table
select * from emp1,emp_trainee;	#displaying two tables
alter table emp1 rename column Age to Age_in_Years;	#altering emp1 table
delete from emp1 where Designation = 'Trainee'; #delete row from table
alter table emp_trainee DROP COLUMN Age;	#altering emp_trainee table
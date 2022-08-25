use arnabdb; 	#database
#1. Create table EMPLOYEE
create table employee( 
EMPLOYEE_ID NUMERIC (6),
LAST_NAME VARCHAR(25),
JOB_ID VARCHAR(10),
SALARY NUMERIC (8,2),
COMM_PCT NUMERIC (4,2),
MGR_ID NUMERIC (6),
DEPARTMENT_ID NUMERIC (4)
);
#2. Insert the following data into EMPLOYEE table
insert into employee values (198,'Connell','SH_CLERK',2600,2.5,124,50);
insert into employee values (199,'Grant','SH_CLERK',2600,2.2,124,50);
insert into employee values (200,'Whalen','AD_ASST',4400,1.3,101,10);
insert into employee values (201,'Hartstein','IT_PROG',6000,null,100,20);
insert into employee values (202,'Fay','AC_MGR',6500,null,210,20);
insert into employee values (203,'Mavris','AD_VP',7500,null,101,40);
insert into employee values (204,'Baer','AD_PRES',3500,1.5,101,90);
insert into employee values (205,'Higgins','AC_MGR',2300,null,101,60);
insert into employee values (206,'Gitz','IT_PROG',5000,null,103,60);
insert into employee values (100,'King','AD_ASST',8956,0.3,108,100);
insert into employee values (101,'Kochar','SH_CLERK',3400,1.3,118,30);
#3. Display last_name, job_id, employee_id for each employee with employee_id appearing first.
select LAST_NAME,Job_Id,EMPLOYEE_ID from employee;
#4. Display the details of all employees of department 60.
select * from employee where DEPARTMENT_ID = 60;
#5. Display the employee details of the employee who’s last_name is King.
select * from employee where LAST_NAME = 'King';
#6. Display unique job_id from EMPLOYEE table. Give alias name to the column as JOB_TITLE.
select distinct JOB_ID as 'JOB_TITLE' from employee;
#7. Display last_name, salary and salary increase of Rs300. Give the new column name as ‘Increased Salary’.
select LAST_NAME,SALARY,SALARY + 300 as 'Increased_Salary' from employee;
#8. Display last_name, salary and annual compensation of all employees, plus a onetime bonus of Rs 100.
# Give an alias name to the column displaying annual compensation.
select LAST_NAME,SALARY,SALARY + COMM_PCT + 100 as 'Annual_Compensation' from employee;
#9. Display the details of those employees who get commission.
select LAST_NAME,COMM_PCT from employee where COMM_PCT is not null;
#10. Display the details of those employees who do not get commission.
select LAST_NAME,COMM_PCT from employee where COMM_PCT is null;
#11. Display the Employee_id, Department_id and Salary all employees whose salary is greater than 5000.
select EMPLOYEE_ID, DEPARTMENT_ID , SALARY from employee where SALARY >5000; 
#12. Display the Last_Name and Salary of all employees whose salary is between 4000 and 7000.
select EMPLOYEE_ID, DEPARTMENT_ID , SALARY from employee where SALARY between 4000 and 7000; 
#13. Display the details of all employees whose salary is either 6000 or 6500 or 7000.
select * from employee where SALARY=6000 or SALARY=6500 or SALARY=7000; 
#14. Display the details of all those employees who work either in department 10 or 20 or 30 or 50.
select * from employee where DEPARTMENT_ID=10 or DEPARTMENT_ID=20 or DEPARTMENT_ID=30 or DEPARTMENT_ID=50;
#15. Display the details of all employees whose salary is not equal to 5000.
select * from employee where SALARY!=5000;
#16. Display the details of all the CLERKS working in the organization.
select * from employee where JOB_ID = 'SH_CLERK';
#17. Update the job_id’s of the employees who earn more than 5000 to Grade_A. Display the table EMPLOYEE after updating.
update employee set JOB_ID = 'Grade_A' where SALARY >= 5000;
#18. Display the details of all those employees who are either CLERK or PROGRAMMER or ASSISTANT.
select * from employee where JOB_ID ='SH_CLERK' or JOB_ID='IT_PROG' or JOB_ID='AD_ASST';
#19. Display those employees from the EMPLOYEE table whose designation is CLERK and salary is less than 3000.
select * from employee where JOB_ID ='SH_CLERK' and SALARY<3000;
#20. Display those employees Last_Name, Mgr_id from the EMPLOYEE table whose salary is above 3000 and work under 
#Manager 101.
select LAST_NAME,MGR_ID from employee where SALARY>3000 and MGR_ID='101';















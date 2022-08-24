use arnabdb;	#datbase
#displaying department table
create table department
(DeptId INT PRIMARY KEY,
DeptZone VARCHAR(30),
DeptBlock VARCHAR(30),
DeptName VARCHAR(30));
#displaying employee table
create table employee
(EmpId INT PRIMARY KEY,
EmpName VARCHAR(10),
EmpNo VARCHAR(10),
Address VARCHAR(20));
#altering
ALTER TABLE department ADD Email varchar(30);
ALTER TABLE employee ADD email varchar(30);
 #inserting values into department table
 INSERT INTO department values(1,"north","b","IT","abc@gmail.com");
 INSERT INTO department values(2,"south","c","FINANCE","xyz@gmail.com");
 INSERT INTO department values(3,"east","a","Marketing","mno@gmail.com");
 INSERT INTO department values(4,"west","d","Electronics","pqr@gmail.com");
 INSERT INTO department values(5,"north","b","Electric","xyz@gmail.com");
  #inserting values into employess table
 INSERT INTO employee values(1,"Arnab","9876543210","kolkata","cde@gmail.com");
 INSERT INTO employee values(2,"Rohit","9874125630","kolkata","fgh@gmail.com");
 INSERT INTO employee values(3,"Virat","8796541250","kolkata","klm@gmail.com");
 INSERT INTO employee values(4,"Rahul","7894561231","kolkata","ijk@gmail.com");
 INSERT INTO employee values(5,"Sourav","7985463210","kolkata","tuv@gmail.com");
 DELETE FROM department WHERE DeptId=1;	#delete row from the table
 UPDATE department set DeptBlock="a" WHERE DeptId=2;	#updating
 TRUNCATE department;	#delete the rows
 DROP TABLE department;	#delete the table
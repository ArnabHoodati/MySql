use arnabdb;	#database
#creating customer table 
create table CUSTOMER(
cust_id varchar(15),
Fname varchar(15),
Area char(2),
Phone numeric(10),
DOB date,
Payment numeric
);
#inserting values into customer table
insert into customer values('A01','sayan','SA',6125467,'1997-01-15',800.50);
insert into customer values('A02','pritam''MU',5560379,'1995-12-20',1000.75);
insert into customer values('A03','arnab','DA',4560389,'1998-07-25',500.00);
insert into customer values('A04','jaita','BA',6125401,'1999-02-15',860.00);
insert into customer values('A05','Ravi','NA',null,'1996-02-15',500.50);
insert into customer values('A06','tanmoy','GH',5125274,'1994-07-23',1500.50);
#updating 
update customer set Phone = 9080706 where cust_id ='A2';
update customer set Phone = 9080707 where cust_id ='A4';
update customer set DOB = '1968-07-25' where cust_id ='A3';
update customer set DOB = '1977-08-15' where cust_id ='A5';
#delete row from customer table
delete from customer where cust_id = 'A1';
delete from customer where cust_id = 'A5';
delete from customer;	#delete the table
#inserting for update values into customer table
insert into customer values('A1','Ishan','SA',6125467,'1986-01-15',800.50);
insert into customer values('A2','Virat','MU',5560379,'1987-12-20',1000.75);
insert into customer values('A3','Rahul','DA',4560389,'1967-07-25',500.00);
insert into customer values('A4','Rohit','BA',6125401,'1956-02-15',860.00);
insert into customer values('A5','Surya','NA',null,'1989-02-15',500.50);
#updating
update customer set Phone = 9080403 where cust_id = 'A5';
#delete values from area column
delete from customer where Area = 'BA'; 
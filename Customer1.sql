use arnabdb;
create table customer1(
Cust_id Varchar (5) primary key,
Fname  Varchar (15),
Lname  Varchar(15),
Area  Char (2),
Phone  numeric (10),
DOB  Date,
Payment numeric(6,2)
);
insert into customer1 values ('A01','Ivan','Ross','SA',6125467,'1986-01-15',800.50);
insert into customer1 values ('A02','Vandana','Ray','MU',5560379,'1987-12-20',1000.75);
insert into customer1 values ('A03','Pramada','Jauguste','DA',4560389,'1967-07-25',500.00);
insert into customer1 values ('A04','Basu','Navindi','BA',6125401,'1956-02-28',860.00);
insert into customer1 values ('A05','Ravi','Shridhar','NA',null,'1989-02-15',500.50);
insert into customer1 values ('A06','Rukmini','Aiyer','GH',5125274 ,'1987-07-23',1500.50);

SHOW COLUMNS FROM customer1 IN arnabdb;
SELECT * FROM customer1;
#Update the phone numbers of customer A02 and A04.
update customer1 set Phone = 9287451 where Cust_id ='A02';
update customer1 set Phone = 7848954 where Cust_id ='A04';
#Update the date of birth of customer A03 and A05.
update customer set DOB='1987-05-15' where Cust_id='A03';
update customer set DOB='1983-12-04' where Cust_id='A05';
#displaying the updated data of table
select * from customer1;
#deleting datas from A01 and A05
delete from customer where Cust_id='A01';
delete from customer where Cust_id='A05';
#deleting all rows from table
TRUNCATE customer1;
#insert 5 records
insert into customer1 values('A01' ,'Arnab', 'Hoodati', 'SA', 7894896, '1986-01-15', 800.50);
insert into customer1 values('A02' ,'Virat', 'Kohli', 'MU', 9874896, '1987-12-20', 1000.75);
insert into customer1 values('A03' ,'Rohit', 'Sharma', 'DA', 7848965, '1967-07-25', 500.00);
insert into customer1 values('A04' ,'Kl', 'Rahul', 'BA', 4879658, '1956-02-28', 860.00);
insert into customer1 values('A05' ,'Sourav', 'Ganguly', 'NA', null, '1989-02-15', 500.50);
#Update one record based on any criteria
update customer1 set Area='DA' where Phone=null;
#Delete any 1 record from the table
delete from customer1 where Cust_id='A04';

use arnabdb;	#database
#create customer table
create table customer(
Cust_id varchar(5) Primary key,
Fname varchar(20) not null,
Lname varchar(20),
Area char(2) not null,
Phone numeric(10)
);
#create movie table
create table movie(
Mv_no int,
Cust_id varchar(5),
title varchar(20),
star varchar(2),
Price numeric,
foreign key movie(Cust_id) references customer(Cust_id)
);
#Insert the following data into customer table
insert into customer values('A01','Ivan','Ross','SA',6125467);
insert into customer values('A02','Vandana','Ray','MU', 5560379);
insert into customer values('A03','Pramada','Jauguste','DA',4560389);
insert into customer values('A04','Basu','Navindi','BA',6125401);
insert into customer values('A05','Ravi','Shridhar','NA',null);
insert into customer values('A06','Rukmini','Aiyer','GH',5125274);

insert into movie values(1,'A02','Bloody','JC',181);
insert into movie values(2,'A04','The Firm','TC',200);
insert into movie values(3,'A01','Pretty Woman','RG',151);
insert into movie values(4,'A06','Home Alone','MC',150);
insert into movie values(5,'A05','The Fugitive','MF',200);
insert into movie values(6,'A03','Come','MD', 100);
insert into movie values(7,'A02','Dracula','GO',150);
insert into movie values(8,'A06','Quick Change','BM',100);
insert into movie values(9,'A03','Gone With The Wind','CB',200);
insert into movie values(10,'A05','Carry on Doctor','LP',100);
#5. Display the movie titles, whose price is greater than 100 but less than 200.
select Title  from movie where Price between 100 and 200; 
#6. Display the cust_id who have seen movies having stars as either JC or TC or MC.
select Cust_id from movie where Star='JC' or Star='TC' or Star='MC'; 
#7. Display the details of those customers who have an A in their area name.
select * from customer where Area like '%A%';
#8. Display the movie titles, whose price is within 180 and the movie titles are of exactly 6 characters.
select title from movie where length(title)=6 and Price<180;
#9. Display the movie name, their original prices and the prices after 10% increment. 
#Give alias name to the incremented price column.
select title,price,price+(price*10/100) as 'incremented' from movie;
#10. Display all the customer details in the following way:
#‘Ivan Ross stays in SA and his phone number is 6125467.’
select Fname,Lname,Area,Phone from customer where Cust_id = 'A01';
#11. Add a not null constraint to the Lname field in Customer.
alter table customer modify Lname varchar(30) not null;
#12. Display the customer’s name whose phone number is not recorded.
select Fname from customer where Phone is null; 
#13. Add the phone number according to your own wish for the person mentioned in problem no 12.
update customer set Phone=6565857 where phone is null;	
#14. Display the unique customer ids from movie table.
select distinct Cust_id from customer movie; 
#15. Remove the not null constraint from Star column in movie table.
alter table movie modify star varchar(3);
#16. Delete any row from the Customer table. If you cannot delete, then note the error message displayed.
delete from customer where Lname='Ray'; 
#17. Delete any row from the Movie table. If you cannot delete, then note the error message displayed.
delete from movie where star='RG';
#18. Drop the Customer table. If you cannot drop, then note the error message displayed.
drop table customer;
#19. Drop the Movie table. If you cannot drop, then note the error message displayed.
drop table movie;

  






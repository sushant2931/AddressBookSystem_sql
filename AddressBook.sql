#UC1

create database AddressBook_services;
show databases;
use AddressBook_services;

#UC2

create table Address_book(
id int unsigned not null auto_increment,
fname varchar(15) not null,
lname varchar(10) not null,
city varchar(50) not null,
state varchar(50) not null,
zip int not null,
phone long not null,
email varchar(100) not null,
primary key (id)
);
select * from address_book;

#UC3

insert into Address_book(fname, lname, city, state, zip, phone, email) values
('Sushant', 'Lad', 'Sangli', 'Maharastra',416306, 8830602356, 'sushantlad@gmail.com' ),
('Rahul', 'pal', 'Agartalla', 'WestBengal', 845700, 8138975257, 'rahulpal@gmail.com' ),
('Chandan', 'Tiwary', 'kolkata', 'Bihar', 794550, 81450945877, 'chandantiwary@gmail.com' ),
('Arnab', 'Nath', 'chennai', 'TamilNaru', 7125487, 81494545879, 'arnabnath@gmail.com' );

#UC4

UPDATE Address_book
SET city = 'Pune',
state = 'Maharashtra',
zip = 411043
WHERE fname = 'shubham';

#UC5

DELETE FROM  Address_book
WHERE fname = 'shubham';

#UC6

SELECT * FROM Address_book
where city = 'mumbai' or state = 'maharashtra';

#UC7

SELECT COUNT(city or state)
FROM Address_book;

#UC8

select fname
  from Address_book
  where city = 'Maharashtra'
  order by fname asc;
  
#UC9

Alter table Address_book add type varchar(15) after lname;
update  Address_book set type='Family' where fname ='Sushant';
update  Address_book set type='Friends' where fname  ='Arnab';
update  Address_book set type='Friends' where fname  ='Chandan';
update  Address_book set type='Profession' where fname  ='Rahul';

#UC10

SELECT COUNT(type) AS Number_Of_Contact_Person 
FROM Address_book;


#UC11


insert into Address_book(fname, lname, city, state, zip, phone, email) values
('Suahant', 'Lad', 'Sangli', 'Maharastra',416306,.8830602356, 'sushantlad@gmail.com' ),
update  Address_book set type='Friends' where id =5;

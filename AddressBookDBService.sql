create database AddressbookService;
use AddressbookService;
show databases;

-- UC2
create table addressBook (firstname varchar(40),lastname varchar(40),address varchar(40),
city varchar(40),state varchar(40),zip varchar(6),phone varchar(12),email varchar(40));

desc addressBook;

-- UC3
Insert into addressBook (firstname,lastname,address,city,state,zip,phone,email) values ('Harish','Kamarasu','TMM','Madurai','TN','222456',
'9042269046','harishkamarasu@gmail.com' );
Insert into addressBook values ('Ram','Kumar','KK nagar','Chennai','TN','625625',
'8833456987','ramkumar@gmal.com' );
Insert into addressBook values ('daniel','D','mg nagar','Mumbai','maharashtra','876345',
'9087654321','danialD@gmal.com' );

select * from addressBook;

-- UC4
use AddressbookService;
update addressBook set phone = '9998887771' where firstname ='Harish';
select * from addressBook;

-- UC5
delete from addressBook where firstname = 'Ram';
select * from addressBook;

-- UC6
select * from addressBook where city = 'Madurai';

-- UC7
select count(*) from addressBook where state = 'Madurai' && city='TN';

-- UC8
Insert into addressBook values ('Mukesh','Kumar','TMM','Madurai','TN','555666',
'9078563412','mukeshkumar@gmal.com' );
select * from addressBook where city = 'Madurai' order by firstname;


-- UC9
alter table addressBook add column bookname varchar(20), add column booktype varchar(20);
update addressBook set bookname='Book1',booktype='Family' where firstname = 'Harish';
update addressBook set bookname='Book2',booktype='Friend' where firstname = 'Mukesh';
update addressBook set bookname='Book1',booktype='Family' where firstname = 'Ram';
update addressBook set bookname='Book2',booktype='Friend' where firstname = 'daniel';
select * from addressBook;

-- UC10
select count(*) from addressBook where booktype='Family';

-- UC11
Insert into addressBook (firstname,lastname,address,city,state,zip,phone,email,bookname,booktype) values ('sunil','j','North Street','bangalore','karnataka','334422',
'9155442345','sunilJ@gmail.com','Book1','Family' );
Insert into addressBook (firstname,lastname,address,city,state,zip,phone,email,bookname,booktype) values ('bala','ji','rk nagar','chennai','TN','55764',
'9543244551','balaji@gmail.com','Book2','Friend' );
select * from addressBook;
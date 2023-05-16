drop database restaurant
go
create database restaurant
go
use restaurant
go
use master


create table customer
(
cust_id char(6) primary key,
cust_name varchar(20) not null,
cust_phone char(11) unique,
cust_area_code char(5) not null,
cust_address varchar(30) not null,
cust_email varchar(50) unique,
points int,
cust_pass varchar(20)
);

create table rider
(
rider_id char(6) primary key,
rider_name varchar(20) not null,
rider_phone char(11) unique,
rider_area_code char(5) not null,
rider_status varchar(10) check (rider_status = 'Available' OR rider_status = 'Busy')
);

create table discount
(
discount_id char(6) primary key,
discount_value float,
points_required int null
);

create table orders
(
order_id char(6) primary key,
cust_id char(6),
rider_id char(6),
payment_mode varchar(15) not null check (payment_mode = 'Online' OR payment_mode = 'CoD'),
order_cost int,
discount_id char(6),
order_total int,
tip float,
foreign key (cust_id) references customer on delete cascade on update cascade,
foreign key (rider_id) references rider on delete cascade on update cascade,
foreign key (discount_id) references discount on delete cascade on update cascade
);

create table menu
(
item_id char(6) primary key,
item_name varchar(30) not null,
category varchar(15),
item_cost int,
item_desc varchar(150)
);

create table items
(
order_id char(6) not null,
item_id char(6) not null,
quantity int not null check (quantity > 0),
primary key (order_id, item_id),
foreign key (order_id) references orders on delete cascade on update cascade,
foreign key (item_id) references menu on delete cascade on update cascade
);

create table reviews
(
review_id char(6) primary key,
cust_id char(6),
rating int not null check (rating < 6),
review_desc varchar(100),
foreign key (cust_id) references customer on delete cascade on update cascade
);

select * from customer
select * from orders
select * from rider
select * from discount
select * from menu
select * from items
select * from reviews

drop table customer
drop table orders
drop table rider
drop table discount
drop table menu
drop table items
drop table reviews
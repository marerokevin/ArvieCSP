create database x11;
###PAYMENT
create table users (
	member_id int(60) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	first_name varchar(255) not null,
	last_name varchar(255) not null,
	dl int(60) not null,
	parent_id int(60) not null);

insert into users (first_name, last_name, parent_id) VALUES ('sample', 'name', '0'); ###users from 0 to 10

###ACCOUNTS
create table accounts (
	member_id int(60) PRIMARY KEY NOT NULL,
	first_name varchar(255) not null,
	last_name varchar(255) not null,
	user varchar(255) not null,
	pass varchar(255) not null,
	confirm_pass varchar(255) not null,
	contact_number int(15) not null,
	email_address varchar(255) not null); 

###PAYMENT
CREATE table payments (
	transaction_id int(60) not null,
	id int(60) PRIMARY KEY NOT NULL,
	parent_id int(60) not null);

CREATE table relationship(
	level int(7) NOT NULL,
	dl int(10) NOT NULL,
	rbt int(3) NOT NULL);

INSERT INTO relationship (level, dl, rbt) VALUES
	(1,10,500),
	(2,100,10),
	(3,1000,10),
	(4,10000,10),
	(5,100000,10),
	(6,500000,10),
	(7,500000,10),
	(8,500000,10),
	(9,500000,10),
	(10,500000,10); 


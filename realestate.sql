create database realestate;
use realestate;
create table admin(
username varchar(50) primary key,
password varchar(50) not null);
desc admin;

create table user(
id int auto_increment primary key,
password varchar(50) not null,
name varchar(50) not null,
address varchar(250) not null,
email varchar(100) not null,
phone_no varchar(20) not null,
city varchar(50) not null);
desc user;

create table owner(
id int auto_increment primary key,
password varchar(50) not null,
name varchar(50) not null,
address varchar(250) not null,
email varchar(100) not null,
phone_no varchar(20) not null);
desc owner;

create table property(
id int auto_increment primary key,
name varchar(100) not null,
price decimal(10,2) not null,
location varchar(250) not null,
type varchar(50) not null,
image text not null);
desc property;

create table payment(
id int auto_increment primary key,
type varchar(50) not null,
date datetime not null,
user_id int not null,
total_amount decimal(10,2) not null,
foreign key(user_id) references user(id));
desc payment;

create table reviews(
id varchar(50) not null,
date_time datetime not null,
decription text);
drop table reviews;

create table reviews(
user_id int not null,
date_time datetime not null,
description text not null,
foreign key(user_id) references user(id));
desc reviews;

use realestate;
show tables;







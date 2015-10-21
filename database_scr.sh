#!/bin/bash
user=$1
pass=$2
base=$3

mysql -u $user -p$pass -e "use $base; create table friends
( id int unsigned not null auto_increment primary key, 
first_name varchar(20),
last_name varchar(20),
title varchar(30),
age int,
email varchar(60)); 

insert into friends (first_name, last_name, title, age, email)
values ('Rachel','Green', 'Mrs.' ,32, 'rachelgreen@gmail.com'),
('Monica', 'Gellar-Bing', 'Mrs.' ,34, 'monicagellar@gmail.com'),
('Phoebe', 'Buffay', 'Ms.' ,36, 'phoebebuffay@gmail.com'),
('Joey','Tribbiani', 'Mr.' ,35, 'joeytribbiani@gmail.com'),
('Chandler','Bing','Mr.',36,'chandlerbing@gmail.com'),
('Ross','Gellar','Professor', 36, 'rossgellar@gmail.com');"


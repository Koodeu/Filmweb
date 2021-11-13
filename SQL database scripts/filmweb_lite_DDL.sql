create database `filmweb_lite` default charset utf8 collate utf8_polish_ci;
use filmweb_lite;

create table categories (
id int primary key auto_increment,
code varchar(50) not null unique,
name varchar(100)
);

create table team_members (
id int primary key auto_increment,
first_name varchar(50) not null,
last_name varchar(50) not null,
sex ENUM('M','F','Other') not null,
date_of_birth date
);

create table films (
id int primary key auto_increment,
title varchar(50) not null,
length_in_minutes int, 
category_id int not null,
year_of_production year,
director_id int not null,
rate double not null
);


create table curiosities (
id int primary key auto_increment,
description varchar(10000) not null,
film_id int not null
);

create table films_actors(
id int primary key auto_increment,
role varchar(100) not null,
film_id int not null,
member_id int not null
);

alter table films_actors add constraint fk_member_id foreign key(member_id) references team_members(id);
alter table films_actors add constraint fk_film_id foreign key(film_id) references films(id);
alter table films add constraint fk_category_id foreign key(category_id) references categories(id);
alter table films add constraint fk_team_members_id foreign key(director_id) references team_members(id);
alter table curiosities add constraint fk_film_id_2 foreign key(film_id) references films(id);

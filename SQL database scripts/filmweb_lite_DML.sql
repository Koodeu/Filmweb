use filmweb_lite;
insert into categories(code, name) values('FAMILIAL','Familijne');
insert into categories(code, name) values('MARTIAL_ARTS','Sztuki walki');
insert into categories(code, name) values('ACTION','Film akcji');
-- Karate Kid 
insert into team_members(first_name, last_name, sex, date_of_birth) values ('John','Avildsen','M','1935-12-21'); -- Director 1
insert into team_members(first_name, last_name, sex, date_of_birth) values ('Ralph','Macchio','M','1961-11-04'); -- Karate Kid 1 i 2 Daniel Larusso 2
insert into team_members(first_name, last_name, sex, date_of_birth) values ('Pat','Morita','M','1932-11-28'); -- Karate Kid 1 i 2Miyagi 3
insert into team_members(first_name, last_name, sex, date_of_birth) values ('Martin','Kove','M','1946-03-06');  -- Karate Kid 1 i 2John Kreese 4
insert into team_members(first_name, last_name, sex, date_of_birth) values ('Rande','Heller','F','1947-06-10');  -- Karate Kid 1 i 2Lucilla Larusson 5
insert into team_members(first_name, last_name, sex, date_of_birth) values ('William','Zabka','M','1965-10-20');  -- Karate Kid 1 i 2 Johny Lawrence 6 
insert into team_members(first_name, last_name, sex, date_of_birth) values ('Bruce','Malmuth','M','1934-02-04');  -- Karate Kid2 Spiker 7 
-- Rambo: Pierwsza Krew 
insert into team_members(first_name, last_name, sex, date_of_birth) values ('Ted','Kotcheff','M','1931-04-07'); -- Director Rambo 8 
insert into team_members(first_name, last_name, sex, date_of_birth) values ('Sylvester','Stallone','M','1946-07-06'); -- John Rambo 9
insert into team_members(first_name, last_name, sex, date_of_birth) values ('Richard','Crenna','M','1926-11-30'); -- Pułkownik Samuel Trautman 10
insert into team_members(first_name, last_name, sex, date_of_birth) values ('Brian','Dennehy','M','1938-07-09'); -- Szeryf Will Teasle 11
insert into team_members(first_name, last_name, sex, date_of_birth) values ('Bill','McKinney','M','1931-09-12'); -- Kapitan Dave Kern 12



-- Szybcy i Wściekli Tokio Drift
insert into team_members(first_name, last_name, sex, date_of_birth) values ('Justin','Lin','M','1971-10-11'); -- Director 13
 
insert into team_members(first_name, last_name, sex, date_of_birth) values ('Lucas','Black','M','1987-03-09'); -- Sean Boswell 14
insert into team_members(first_name, last_name, sex, date_of_birth) values ('Shad','Moss','M','1971-10-11');  -- Twinkie 15
insert into team_members(first_name, last_name, sex, date_of_birth) values ('Nathalie','Kelley','F','1984-10-05');  -- Kelley 16 
insert into team_members(first_name, last_name, sex, date_of_birth) values ('Sung','Kang','M','1972-04-08'); -- Han   17 
insert into team_members(first_name, last_name, sex, date_of_birth) values ('Brian','Tee','M','1977-03-15');  -- D.K. 18
insert into team_members(first_name, last_name, sex, date_of_birth) values ('Leonardo','Nam','M','1979-11-23'); -- Morimoto 19
insert into team_members(first_name, last_name, sex, date_of_birth) values ('Vin','Diesel','M','1967-07-18'); -- Dominic Toretto 20  Szybcy i Wściekli 5
 -- Szybcy i Wściekli 5
insert into team_members(first_name, last_name, sex, date_of_birth) values ('Paul','Walker','M','1973-09-12');-- Brian O'Conner 21
insert into team_members(first_name, last_name, sex, date_of_birth) values ('Jordana','Brewster','F','1980-04-26'); -- Mia Toretto 22
insert into team_members(first_name, last_name, sex, date_of_birth) values ('Dwayne','Johnson','M','1972-05-02'); -- Luke Hobbs 23
 
 
insert into films(title, length_in_minutes, category_id, year_of_production, director_id, rate) values ('Karate Kid', 126,2,1984,1,6.7); -- 1
insert into films(title, length_in_minutes, category_id, year_of_production, director_id, rate) values ('Karate Kid 2', 113,2,1986,1,6.3); -- 2
insert into films(title, length_in_minutes, category_id, year_of_production, director_id, rate) values ('Rambo: Pierwsza krew', 99, 3, 1982, 8, 7.3); -- 3
insert into films(title, length_in_minutes, category_id, year_of_production, director_id, rate) values ('Szybcy i Wściekli: Tokio Drift', 104, 3, 2006, 13, 7.1); -- 4
insert into films(title, length_in_minutes, category_id, year_of_production, director_id, rate) values ('Szybcy i Wściekli 5', 130, 3, 2011, 13, 7.4); -- 5

insert into films_actors (role, film_id, member_id) values ('Daniel Larusso', 1 , 2);
insert into films_actors (role, film_id, member_id) values ('Daniel Larusso', 2 , 2);
insert into films_actors (role, film_id, member_id) values ('Miyagi', 1 , 3);
insert into films_actors (role, film_id, member_id) values ('Miyagi', 2 , 3);
insert into films_actors (role, film_id, member_id) values ('John Kreese', 1 , 4);
insert into films_actors (role, film_id, member_id) values ('John Kreese', 2 , 4);
insert into films_actors (role, film_id, member_id) values ('Lucilla Larusson', 1 , 5);
insert into films_actors (role, film_id, member_id) values ('Lucilla Larusson', 2 , 5);
insert into films_actors (role, film_id, member_id) values ('Johny Lawrence', 1 , 6);
insert into films_actors (role, film_id, member_id) values ('Johny Lawrence', 2 , 6);
insert into films_actors (role, film_id, member_id) values ('Spiker', 2 , 7);

insert into films_actors (role, film_id, member_id) values ('Director Rambo', 3 , 9);
insert into films_actors (role, film_id, member_id) values ('Pułkownik Samuel Trautman', 3 , 10);
insert into films_actors (role, film_id, member_id) values ('Szeryf Will Teasle', 3 , 11);
insert into films_actors (role, film_id, member_id) values ('Kapitan Dave Kern', 3 , 12);


insert into films_actors (role, film_id, member_id) values ('Sean Boswell', 4 , 14);
insert into films_actors (role, film_id, member_id) values ('Twinkie', 4 , 15);
insert into films_actors (role, film_id, member_id) values ('Kelley', 4 , 16);
insert into films_actors (role, film_id, member_id) values ('Han', 4 , 17);
insert into films_actors (role, film_id, member_id) values ('D.K.', 4 , 18);
insert into films_actors (role, film_id, member_id) values ('Morimoto', 4 , 19);
insert into films_actors (role, film_id, member_id) values ('Dominic Toretto', 4 , 20);

insert into films_actors (role, film_id, member_id) values ('Dominic Toretto', 5 , 20);
insert into films_actors (role, film_id, member_id) values ('Brian O Conner', 5 , 21);
insert into films_actors (role, film_id, member_id) values ('Mia Toretto', 5 , 22);
insert into films_actors (role, film_id, member_id) values ('Luke Hobbs', 5 , 23);

select * from films;
select * from team_members;
select * from films_actors;


-- insert into films_actors(role,film_id,member_id) values ('Daniel Larusso',
 

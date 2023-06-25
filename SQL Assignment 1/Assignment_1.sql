create database grpby;
use grpby;

CREATE TABLE Actor(Actor_ID int,Actor_name varchar(30),Gender varchar(10),debut_year int);

CREATE TABLE Director(Director_ID int,Director_name varchar(30),no_of_movies int);

CREATE TABLE Movie(Movie_name varchar(30),release_year int,genre varchar(15),lead_1 int,lead_2 int,director_id int,box_collection int );

CREATE TABLE DVD(DVD_id int,Movie_name varchar(30),sale int);

insert into actor values(1,'Aamir Khan','male',1988);
insert into actor values(2,'Shahrukh Khan','male',1992);
insert into actor values(3,'Kareena Kapoor','female',2000);
insert into actor values(4,'Kajol','female',1992);
insert into actor values(5,'Anushka Sharma','female',2008);
insert into actor values(6,'Ranbir Kapoor','male',2007);
insert into actor values(7,'Alia Bhatt','female',2012);
insert into actor values(8,'Ranveer Singh','male',2010);
insert into actor values(9,'Deepika Padukone','female',2006);
insert into actor values(10,'Shahid Kapoor','male',2003);
insert into actor values(11,'Katrina Kaif','female',2003);
insert into actor values(12,'Varun Dhawan','male',2012);



insert into director values(1,'Rajkumar Hirani',10);
insert into director values(2,'Sanjay Leela Bhansali',8);
insert into director values(3,'Aditya Chopra',6);
insert into director values(4,'Zoya Akhtar',3);
insert into director values(5,'Imtiaz Ali',5);
insert into director values(6,'Ayan Mukerji',4);
insert into director values(7,'Santosh Sivan',9);
insert into director values(8,'Farah Khan',4);


insert into movie values('3 Idiots',2009,'comedy',1,3,1,989600000);
insert into movie values('PK',2014,'satire',1,5,1,789600000);
insert into movie values('Bajirao Mastani',2015,'historic',8,9,2,68960000);

insert into movie values('Rab ne bana di jodi',2008,'romance',2,5,3,48960000);

insert into movie values('Gully boy',2019,'Musical drama',8,7,4,28950000);
insert into movie values('Jab we met',2007,'romance',10,3,5,18980000);
insert into movie values('Padmavat',2018,'historic',8,9,2,38460000);
insert into movie values('Yeh jawani hai deewani',2013,'romance',6,9,6,581600000);

insert into movie values('Ashoka',2001,'historic',2,3,7,8796000);
insert into movie values('Happy new year',2014,'comedy',2,9,8,68960000);

insert into DVD values(1,'3 Idiots',8890);
insert into DVD values(2,'PK',8790);
insert into DVD values(3,'Bajirao Mastani',6810);
insert into DVD values(4,'Rab ne bana di jodi',7920);
insert into DVD values(5,'Gully boy',870);
insert into DVD values(6,'Jab we met',4792);
insert into DVD values(7,'Padmavat',590);
insert into DVD values(8,'Yeh jawani hai deewani',2890);
insert into DVD values(9,'Ashoka',730);
insert into DVD values(10,'Happy new year',1690);


-- Q1. Display the count of actors and actresses.

select Gender , count(*) 
from actor
group by Gender;

-- Q2. Display the count of movies of each genre. 

select genre, count(movie_name) as count
from movie
group by genre;

-- Q3. Calculate the oldest released movie of each genre.
 
select genre, MIN(release_year) as `Oldest Release`
from movie
group by genre;

-- Q4. Calculate the total box office collection for movies of each genre.

select genre, SUM(box_collection)
from movie
group by genre;

-- Q5. Display the name of director, current count of movies and total count of movies directed by him/her.

select Director_name, count(movie_name) as `Present Count`, no_of_movies as `Total Count`
from Director,Movie
WHERE movie.director_id = director.director_id
group by movie.director_id, director_name, no_of_movies;

-- Q6. Display the name of lead_1 actors, their count of movies and their total DVD sales.

select lead_1, count(D.Movie_name) as `no. of movies`, sum(sale) as `Total Sale`
from Movie as M,DVD as D
where M.Movie_name=D.Movie_name
group by lead_1;

-- Q7. Show the release year and number of movies released in each year only if more than 1 movie is released each year.

select release_year, count(Movie_name) as `no. of movies`
from movie
group by release_year
having count(movie_name)>1;

-- Q8. Display the director name and their total box office collection which should be greater than 50 crores.

select Director_name, SUM(box_collection) as `Total Box Collection`
from Director,Movie
where Director.Director_ID=Movie.director_id
group by Director.Director_Id,Director.Director_name
having SUM(box_collection)>500000000;

-- Q9. Give the count of movies of each genre in decreasing order of count.

select genre, count(movie_name) as total_count
from movie
group by genre
order by count(movie_name) desc;

-- Q10. Sort the movie names based on director names.

select Director.Director_name,Movie.Movie_name
from Director,Movie
where Director.Director_ID=Movie.director_id
group by Director_name,Movie_name
order by Director.Director_name asc;

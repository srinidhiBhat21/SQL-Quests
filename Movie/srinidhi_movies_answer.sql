create database movie
use movie
select * from movie
#Write a SQL query to find when the movie 'American Beauty' released. Return
#movie release year.
select mov_title, mov_year from movie
where mov_title = 'American Beauty';

#Write a SQL query to find those movies, which were released before 1998. Return
#movie title.
select mov_title, mov_year from movie
where mov_year < 1998

#Write a query where it should contain all the data of the movies which were
#released after 1995 and their movie duration was greater than 120.
select * from movie
where mov_year> 1995 and mov_time>120

#Write a query to determine the Top 7 movies which were released in United
#Kingdom. Sort the data in ascending order of the movie year.
select * from movie
where mov_rel_country = 'UK' 
order by mov_year asc
limit 7


#Set the language of movie language as 'Chinese' for the movie which has its
#existing language as Japanese and the movie year was 2001.

update movie
set mov_lang = 'Chinese'
where mov_lang = 'Japanese'
and mov_year = 2001

#Write a SQL query to find name of all the reviewers who rated the movie
#'Slumdog Millionaire'.
select re.rev_name from movie as m
inner join ratings as r using (mov_id)
inner join reviewer as re using (rev_id)
where m.mov_title = 'Slumdog Millionaire'

#Write a query which fetch the first name, last name & role played by the
#actor where output should all exclude Male actors.
select act_fname, act_lname, role from cast as c
inner join actor as a using (act_id)
where act_gender = 'F';

#Write a SQL query to find the actors who played a role in the movie 'Annie Hall'.
#Fetch all the fields of actor table. (Hint: Use the IN operator).

select *
from actor AS a
where a.act_id IN (
    select c.act_id
    from cast AS c
	inner join  movie AS m using (mov_id)
    where m.mov_title = 'Annie Hall')
    
#Write a SQL query to find those movies that have been released in countries other
#than the United Kingdom. Return movie title, movie year, movie time, and date of
#release, releasing country.
select mov_title, mov_year, mov_time, mov_dt_rel, mov_rel_country from movie
where mov_rel_country != 'UK'

#Print genre title, maximum movie duration and the count the number of
#movies in each genre. (HINT: By using inner join)
select gen_title, max(m.mov_time), count(m.mov_id) as movie_count
from genres as g
inner join movie_genres as mg using(gen_id)
inner join movie as m using(mov_id)
group by g.gen_title

#Create a view which should contain the first name, last name, title of the
#movie & role played by particular actor.
act_mov_rolcreate view act_mov_rol as 
select a.act_fname, a.act_lname, m.mov_title, c.role 
from actor as a
inner join cast as c using (act_id)
inner join movie as m using(mov_id)

select * from act_mov_rol

#Write a SQL query to find the movies with the lowest ratings
select m.mov_title, r.num_o_ratings  from movie as m
inner join ratings as r using (mov_id)
order by r.num_o_ratings asc
limit 5

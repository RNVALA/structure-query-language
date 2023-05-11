/* Print all movies in order of their release year (latest_first)*/

select * from movies order by release_year Desc;

/*All the movies released in the year 2020*/

select * from movies where release_year=2022;

/*all the movies released after year 2020*/

select * from movies where release_year>2020;
 
/* select all movies after the year 2020 that have more than 8 rating*/
 
select * from movies where release_year>2020 and imdb_rating>8;

/* select all thor movies by their release year*/
select * from movies where title like '%thor%' order by release_year desc;

/*select all the movies that are by maravel studios and homabale studio*/
select * from movies where studio in ("marvel studios", "hombale films");

/*select all that are not from marvel studios*/
select * from movies where studio!="marvel studios";
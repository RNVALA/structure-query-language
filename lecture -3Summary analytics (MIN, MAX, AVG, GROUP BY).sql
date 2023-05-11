/* i want to see maximum imdb rating then there is max function*/
select max(imdb_rating) from movies  where industry="bollywood";

/* we want to see minimum rating */
select min(imdb_rating) from movies where industry="bollywood";

/* i want to see average marvel movie imdb rating and avg should column name shold be avg and avg should come upto 2 decimal point*/
select round(avg(imdb_rating),2) as avg from movies where studio="marvel studios";

/* if i want to see min, max and avg rating*/
select min(imdb_rating) as min_rating,round(avg(imdb_rating),2) as avg_rating,max(imdb_rating) as max_rating
from movies where studio="Marvel Studios";

/* group by is allow you to on which criteria you are grouping the thing*/
select industry, count(*)
from movies 
group by industry;
/* group by studio*/
select studio, count(*) as cnt
from movies 
group by studio
order by cnt desc;
/* i want to do group bt industry and also want avg_Rating*/
select industry,
count(industry) as cnt,
avg(imdb_rating) as avg_rating
from movies
group by industry;


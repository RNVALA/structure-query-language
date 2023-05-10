/* we want to select all the movie whose rating is > 5*/
select * from movies where imdb_rating>5;
/* if i want to select all the movies whose rating is >5 and less than 9*/
select * from movies where imdb_rating >5 and imdb_rating<9;
select * from movies where imdb_rating between 6 and 8;
/* all the movies you want to retrive of year2019,2020,2021*/
select * from movies where release_year=2022 or release_year=2020 or release_year=2019; 
select * from movies where release_year in (2022,2019,2018);
/* for numeric column null is valid type */
/* we want to select movies where imdb rating is null*/
select * from movies where imdb_rating is NULL;
/* we want to select movies where value is not null*/
select * from movies where imdb_rating is null; 
/* we want to select a movies that is from bollywood industry and you want to see lowest ratig to hoghest rating of imdb*/
select * from movies where industry="bollywood" order by imdb_rating;

/* same for highest to lowest we use desc*/
select * from movies where industry="bollywood"  order by imdb_rating  desc;
/* we want to select a top 05 movie as per the imdb rating*/
select * from movies where industry="bollywood" order by imdb_rating Desc limit 5;
/* we want to select a  top 05 movie but first movie we don't want to select after first movie we want to  select top 05 movies*/
select * from movies where industry="bollywood" order by imdb_rating Desc limit 05 offset 1
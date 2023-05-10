/*print all movies titles where and release year for all marvel studio movies*/
select title,release_year from movies where studio="Marvel Studios";
/*2. print all movies that have avenger in their name*/
SELECT * from movies where title LIKE '%Avenger%';
/*print the year when the movie "the Godfather" was release*/

SELECT release_year from movies where title="The Godfather";
/*Print all distinct movie studios on Bollywood industry*/
SELECT DISTINCT studio from movies where industry="Bollywood";




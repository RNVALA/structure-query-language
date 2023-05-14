/*if i want to join two table on the basic of movie id*/
select
movies.movie_id,title,budget,revenue,currency,unit#here we first wrute which column we need and if column is there in both the table than specify like this movies.movie_id
from movies#base table
inner join financials#second table
on movies.movie_id=financials.movie_id;#on which basics are you joining the table
#by default join is inner if you will not specify any join than it consider as inner



/* left join*/
select
movies.movie_id,title,budget,revenue,currency,unit
from movies
left join financials
on movies.movie_id=financials.movie_id;


/*right join*/
select
financials.movie_id,title,budget,revenue,currency,unit
from movies
right join financials
on movies.movie_id=financials.movie_id;

/*full join*/
select movies.movie_id,title,budget,revenue,currency,unit
from movies left join financials 
on movies.movie_id=financials.movie_id


union

select financials.movie_id,title,budget,revenue,currency,unit
from movies right join financials
 on movies.movie_id=financials.movie_id;
/* except a inner join all the join are called outer joins*/


/*if you have more than two common columns and you want perform join on the basics of both columns then using keyword is used in place of on*/
select
movies.movie_id,title,budget,revenue,currency,unit
from movies
right outer join financials
using(movie_id);
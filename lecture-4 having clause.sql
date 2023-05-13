# print all the years where more than 2 movies where release 
select release_year,count(*) as movie_count
from movies 
group by release_year
having movie_count>2
order by movie_count desc
#in having whatever column is refering to has to be there in select 

#this is order that sql query executes
#-->where-->groupby-->having-->order by
#group by and having clauses are often uses together
#The column you use in having should be present in select cluse, where can use columns that is not present in select clause as well
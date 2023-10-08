select 
 from title,movie_companies
 where (title.id = movie_companies.movie_id) And (movie_companies.movie_id = title.id)
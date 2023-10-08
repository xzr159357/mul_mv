create materialized view if not exists mv176 as select 
 from title,movie_companies
 where (title.id = movie_companies.movie_id) And (movie_companies.movie_id = title.id)
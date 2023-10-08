create materialized view if not exists mv119 as select cast_info.movie_id AS movie_id, movie_companies.company_id AS company_id
 from title,cast_info,movie_companies
 where (title.id = movie_companies.movie_id) And (cast_info.movie_id = title.id) And (movie_companies.company_id < 27)
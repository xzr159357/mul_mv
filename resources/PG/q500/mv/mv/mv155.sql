create materialized view if not exists mv155 as select movie_companies.company_id AS company_id, movie_keyword.movie_id AS movie_id
 from movie_keyword,title,movie_companies
 where (movie_keyword.movie_id = title.id) And (title.id = movie_companies.movie_id) And (movie_companies.movie_id = title.id) And (movie_companies.company_id < 95601)
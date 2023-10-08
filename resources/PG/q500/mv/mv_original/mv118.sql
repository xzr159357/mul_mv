select movie_companies.company_id AS company_id, movie_companies.movie_id AS movie_id
 from title,movie_companies
 where (title.id = movie_companies.movie_id) And (movie_companies.company_id < 95601)
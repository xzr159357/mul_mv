select movie_companies.company_id AS company_id, movie_companies.movie_id AS movie_id, title.production_year AS production_year
 from title,movie_companies
 where (title.id = movie_companies.movie_id) And (title.production_year > 1963) And (movie_companies.company_id < 190835)
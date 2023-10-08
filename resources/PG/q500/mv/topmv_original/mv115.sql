select movie_companies.company_id AS company_id, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_id, title.production_year AS production_year
 from title,movie_companies
 where (title.id = movie_companies.movie_id) And (title.production_year < 2012) And (movie_companies.company_id > 65820)  And  (movie_companies.company_type_id > 1)
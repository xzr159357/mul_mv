select movie_companies.company_id AS company_id, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_id
 from title,movie_companies
 where (title.id = movie_companies.movie_id) And (((movie_companies.company_id > 1688)  And  (movie_companies.company_type_id > 1)) Or ((movie_companies.company_id = 31319)  And  (movie_companies.company_type_id = 1)))
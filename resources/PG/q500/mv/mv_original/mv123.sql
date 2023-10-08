select movie_companies.company_id AS company_id, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_id, title.kind_id AS kind_id
 from title,movie_companies
 where (title.id = movie_companies.movie_id) And (title.kind_id > 1) And (movie_companies.company_id < 26309)  And  (movie_companies.company_type_id = 1)
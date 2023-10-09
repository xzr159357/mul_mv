select movie_companies.company_id AS company_id, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_id, movie_companies.note AS note, title.production_year AS production_year, title.title AS title
 from movie_companies,title
 where (movie_companies.movie_id = title.id) And (movie_companies.note IS NULL) And (title.title like '%Money%')  And  (title.production_year = 1998)
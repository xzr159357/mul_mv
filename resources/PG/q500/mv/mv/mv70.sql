create materialized view if not exists mv70 as select movie_companies.company_id AS company_id, movie_companies.company_type_id AS company_type_id, movie_info.info_type_id AS info_type_id, movie_info.movie_id AS movie_id, title.kind_id AS kind_id, title.production_year AS production_year
 from title,movie_info,movie_companies
 where (title.id = movie_companies.movie_id) And (movie_info.movie_id = movie_companies.movie_id) And (movie_info.info_type_id > 9) And (movie_companies.movie_id = title.id) And (movie_companies.company_type_id < 2)  And  (movie_companies.company_id = 7851)
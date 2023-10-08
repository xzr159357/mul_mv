select movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_id, movie_info.info_type_id AS info_type_id, title.kind_id AS kind_id, title.production_year AS production_year
 from title,movie_info,movie_companies
 where (movie_companies.movie_id = title.id) And (movie_info.movie_id = title.id) And (title.kind_id < 7)  And  (title.production_year = 2007) And (movie_info.info_type_id > 16) And (movie_companies.company_type_id > 1)
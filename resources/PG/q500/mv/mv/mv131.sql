create materialized view if not exists mv131 as select movie_companies.company_id AS company_id, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_companies_movie_id_2, movie_info.info_type_id AS info_type_id, movie_keyword.movie_id AS movie_keyword_movie_id_4, title.kind_id AS kind_id
 from movie_keyword,movie_info,title,movie_companies
 where (movie_keyword.movie_id = title.id) And (movie_info.movie_id = title.id) And (movie_info.info_type_id < 2) And (title.id = movie_companies.movie_id) And (title.kind_id < 7) And (movie_companies.company_id < 11471)  And  (movie_companies.company_type_id = 1)
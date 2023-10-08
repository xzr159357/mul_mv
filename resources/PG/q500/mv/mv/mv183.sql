create materialized view if not exists mv183 as select movie_companies.company_id AS company_id, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_companies_movie_id_2, movie_info_idx.movie_id AS movie_info_idx_movie_id_3, movie_keyword.keyword_id AS keyword_id, title.kind_id AS kind_id
 from movie_keyword,title,movie_companies,movie_info_idx
 where (movie_keyword.movie_id = movie_companies.movie_id) And (movie_keyword.keyword_id = 3644) And (title.id = movie_companies.movie_id) And (movie_info_idx.movie_id = title.id) And (movie_companies.company_id > 19054)  And  (movie_companies.company_type_id = 2)
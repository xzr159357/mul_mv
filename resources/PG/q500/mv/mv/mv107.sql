create materialized view if not exists mv107 as select cast_info.movie_id AS movie_id, movie_companies.company_type_id AS company_type_id, movie_info_idx.info_type_id AS info_type_id, movie_keyword.keyword_id AS keyword_id
 from title,movie_info_idx,movie_keyword,cast_info,movie_companies
 where (title.id = movie_info_idx.movie_id) And (cast_info.movie_id = title.id) And (movie_companies.movie_id = title.id) And (movie_info_idx.movie_id = title.id) And (movie_info_idx.info_type_id < 101) And (movie_keyword.keyword_id = 74852) And (title.id = movie_keyword.movie_id) And (movie_companies.company_type_id = 1)
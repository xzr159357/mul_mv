create materialized view if not exists mv180 as select cast_info.movie_id AS cast_info_movie_id_0, cast_info.person_id AS person_id, cast_info.role_id AS role_id, movie_companies.company_id AS company_id, movie_info_idx.movie_id AS movie_info_idx_movie_id_4, title.kind_id AS kind_id
 from title,movie_info_idx,movie_keyword,cast_info,movie_companies
 where (title.id = movie_companies.movie_id) And (movie_info_idx.movie_id = title.id) And (movie_keyword.movie_id = title.id) And (cast_info.movie_id = movie_companies.movie_id) And (cast_info.person_id < 525577)  And  (cast_info.role_id = 9) And (movie_companies.company_id < 428)
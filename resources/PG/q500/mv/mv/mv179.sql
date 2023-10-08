create materialized view if not exists mv179 as select cast_info.movie_id AS cast_info_movie_id_0, cast_info.person_id AS person_id, cast_info.role_id AS role_id, movie_companies.company_id AS company_id, movie_info_idx.movie_id AS movie_info_idx_movie_id_4, title.kind_id AS kind_id
 from movie_companies,title,cast_info,movie_info_idx
 where (movie_companies.movie_id = title.id) And ((movie_companies.company_id > 80011) Or (movie_companies.company_id < 428)) And (title.id = movie_companies.movie_id) And (movie_info_idx.movie_id = title.id) And (cast_info.movie_id = movie_companies.movie_id) And (((cast_info.person_id = 613664)  And  (cast_info.role_id = 1)) Or ((cast_info.person_id < 525577)  And  (cast_info.role_id = 9)))
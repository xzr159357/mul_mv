select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, cast_info.role_id AS role_id, movie_companies.company_id AS company_id, movie_info.info_type_id AS movie_info_info_type_id_4, movie_info_idx.info_type_id AS movie_info_idx_info_type_id_5, title.kind_id AS kind_id, title.production_year AS production_year
 from title,movie_info_idx,movie_info,cast_info,movie_companies
 where (cast_info.movie_id = title.id) And (movie_companies.movie_id = title.id) And (movie_info.movie_id = title.id) And (movie_info_idx.movie_id = title.id) And (title.kind_id = 1)  And  (title.production_year = 1979) And (movie_info_idx.info_type_id = 101) And (movie_info.info_type_id = 8) And (cast_info.person_id > 1502694)  And  (cast_info.role_id > 1) And (movie_companies.company_id > 8488)
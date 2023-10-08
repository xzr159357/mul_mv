select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, cast_info.role_id AS role_id, movie_info_idx.info_type_id AS info_type_id, title.kind_id AS kind_id, title.production_year AS production_year
 from title,cast_info,movie_info_idx
 where (cast_info.movie_id = title.id) And (movie_info_idx.movie_id = title.id) And (title.kind_id = 1)  And  (title.production_year = 1979) And (cast_info.person_id > 1502694)  And  (cast_info.role_id > 1) And (movie_info_idx.info_type_id = 101)
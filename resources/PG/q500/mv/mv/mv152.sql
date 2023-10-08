create materialized view if not exists mv152 as select cast_info.movie_id AS movie_id, cast_info.role_id AS role_id, movie_info.info_type_id AS info_type_id
 from title,movie_info,cast_info
 where (title.id = cast_info.movie_id) And (movie_info.movie_id = title.id) And ((movie_info.info_type_id = 2) Or (movie_info.info_type_id = 16)) And (cast_info.role_id = 2)
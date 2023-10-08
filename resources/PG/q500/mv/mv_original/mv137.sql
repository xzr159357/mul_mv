select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, cast_info.role_id AS role_id, movie_info_idx.info_type_id AS info_type_id
 from title,cast_info,movie_info_idx
 where (title.id = movie_info_idx.movie_id) And (cast_info.movie_id = title.id) And (cast_info.person_id < 1717521)  And  (cast_info.role_id > 2) And (movie_info_idx.info_type_id < 100)
select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, cast_info.role_id AS role_id, movie_info.info_type_id AS info_type_id
 from movie_info,cast_info
 where (cast_info.movie_id = movie_info.movie_id) And (movie_info.info_type_id = 6) And (cast_info.person_id < 2578432)  And  (cast_info.role_id = 1)
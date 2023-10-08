select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, cast_info.role_id AS role_id
 from title,movie_info,cast_info
 where (title.id = cast_info.movie_id) And (movie_info.movie_id = title.id) And (cast_info.person_id > 2861977)  And  (cast_info.role_id = 8)
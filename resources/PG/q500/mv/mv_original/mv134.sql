select cast_info.movie_id AS movie_id, cast_info.role_id AS role_id
 from title,cast_info
 where (title.id = cast_info.movie_id) And ((cast_info.role_id = 10) Or (cast_info.role_id = 2))
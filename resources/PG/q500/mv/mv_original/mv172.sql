select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, cast_info.role_id AS role_id
 from movie_keyword,title,cast_info
 where (movie_keyword.movie_id = title.id) And (title.id = cast_info.movie_id) And (cast_info.person_id > 3393072)  And  (cast_info.role_id = 10)
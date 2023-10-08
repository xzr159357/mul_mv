select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, cast_info.role_id AS role_id, movie_keyword.keyword_id AS keyword_id
 from movie_keyword,cast_info
 where (movie_keyword.movie_id = cast_info.movie_id) And (movie_keyword.keyword_id = 7633) And (cast_info.person_id < 2537845)  And  (cast_info.role_id = 1)
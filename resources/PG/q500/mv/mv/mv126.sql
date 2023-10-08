create materialized view if not exists mv126 as select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, cast_info.role_id AS role_id
 from title,cast_info
 where (title.id = cast_info.movie_id) And (cast_info.person_id < 3176078)  And  (cast_info.role_id = 8)
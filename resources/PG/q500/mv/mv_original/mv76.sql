select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, cast_info.role_id AS role_id, title.production_year AS production_year
 from title,cast_info
 where (cast_info.movie_id = title.id) And ((title.production_year < 2011) Or (title.production_year = 2011)) And (cast_info.person_id < 3035842)  And  (cast_info.role_id > 10)
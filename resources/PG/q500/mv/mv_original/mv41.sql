select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, title.kind_id AS kind_id, title.production_year AS production_year
 from title,cast_info
 where (cast_info.movie_id = title.id) And (((title.kind_id < 7)  And  (title.production_year > 1993)) Or ((title.kind_id = 1)  And  (title.production_year = 1979))) And (cast_info.person_id > 2542204)
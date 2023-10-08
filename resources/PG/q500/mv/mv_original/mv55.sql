select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, movie_info_idx.info_type_id AS info_type_id, title.production_year AS production_year
 from title,cast_info,movie_info_idx
 where (title.id = movie_info_idx.movie_id) And (cast_info.movie_id = title.id) And (title.production_year > 1981) And (cast_info.person_id < 413342) And (movie_info_idx.info_type_id = 100)
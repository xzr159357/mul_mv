select cast_info.movie_id AS movie_id, title.production_year AS production_year
 from title,cast_info
 where (cast_info.movie_id = title.id) And ((title.production_year < 2011) Or (title.production_year = 2011))
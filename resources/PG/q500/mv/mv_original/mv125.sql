select movie_info.info_type_id AS info_type_id, movie_info.movie_id AS movie_id, title.production_year AS production_year
 from title,movie_info,movie_info_idx
 where (movie_info.movie_id = title.id) And (movie_info_idx.movie_id = title.id) And ((title.production_year < 1966) Or (title.production_year > 2004)) And ((movie_info.info_type_id = 3) Or (movie_info.info_type_id > 3))
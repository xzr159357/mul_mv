select movie_info.info_type_id AS info_type_id, movie_info.movie_id AS movie_id, title.production_year AS production_year
 from title,movie_info
 where (movie_info.movie_id = title.id) And (title.production_year > 1998) And ((movie_info.info_type_id > 103) Or (movie_info.info_type_id = 17))
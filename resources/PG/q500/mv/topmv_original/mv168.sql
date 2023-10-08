select movie_info.info_type_id AS info_type_id, movie_info.movie_id AS movie_id, title.kind_id AS kind_id, title.production_year AS production_year
 from title,movie_info
 where (movie_info.movie_id = title.id) And (title.production_year < 2008)  And  (title.kind_id = 1) And (movie_info.info_type_id < 2)
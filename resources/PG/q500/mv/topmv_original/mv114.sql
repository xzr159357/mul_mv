select movie_info_idx.info_type_id AS info_type_id, title.kind_id AS kind_id, title.production_year AS production_year
 from title,movie_info_idx
 where (title.id = movie_info_idx.movie_id) And (((title.kind_id > 3)  And  (title.production_year > 2006)) Or ((title.kind_id > 1)  And  (title.production_year = 2004))) And (movie_info_idx.movie_id = title.id) And (movie_info_idx.info_type_id = 99)
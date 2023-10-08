select movie_info.info_type_id AS info_type_id, movie_info.movie_id AS movie_id, title.kind_id AS kind_id, title.production_year AS production_year
 from movie_keyword,movie_info,title
 where (movie_keyword.movie_id = title.id) And (movie_info.movie_id = title.id) And ((movie_info.info_type_id < 5) Or (movie_info.info_type_id > 15)) And (title.kind_id > 1)  And  (title.production_year = 1988)
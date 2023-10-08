select movie_info.info_type_id AS info_type_id, movie_info.movie_id AS movie_info_movie_id_1, movie_keyword.movie_id AS movie_keyword_movie_id_2
 from movie_keyword,movie_info,title,movie_info_idx
 where (movie_keyword.movie_id = title.id) And (movie_info.movie_id = title.id) And ((movie_info.info_type_id > 8) Or (movie_info.info_type_id < 7)) And (movie_info_idx.movie_id = title.id)
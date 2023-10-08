select movie_info.info_type_id AS movie_info_info_type_id_0, movie_info.movie_id AS movie_id, movie_info_idx.info_type_id AS movie_info_idx_info_type_id_2
 from title,movie_info,movie_info_idx
 where (movie_info.movie_id = title.id) And (movie_info_idx.movie_id = title.id) And ((movie_info.info_type_id = 3) Or (movie_info.info_type_id = 6)) And (movie_info_idx.info_type_id > 99)
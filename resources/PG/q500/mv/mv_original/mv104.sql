select cast_info.movie_id AS movie_id, movie_info.info_type_id AS movie_info_info_type_id_1, movie_info_idx.info_type_id AS movie_info_idx_info_type_id_2
 from title,movie_info,cast_info,movie_info_idx
 where (cast_info.movie_id = title.id) And (movie_info.movie_id = title.id) And (movie_info_idx.movie_id = title.id) And (movie_info.info_type_id = 6) And (movie_info_idx.info_type_id > 99)
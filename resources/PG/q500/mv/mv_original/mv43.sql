select movie_info.info_type_id AS info_type_id, movie_info.movie_id AS movie_id
 from title,movie_info,movie_info_idx
 where (movie_info.movie_id = title.id) And (movie_info_idx.movie_id = title.id) And ((movie_info.info_type_id = 3) Or (movie_info.info_type_id = 6))
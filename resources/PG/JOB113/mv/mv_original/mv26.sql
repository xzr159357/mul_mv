select info_type.info AS info_type_info_0, movie_info_idx.info AS movie_info_idx_info_1, movie_info_idx.movie_id AS movie_id
 from movie_info_idx,info_type
 where (movie_info_idx.info_type_id = info_type.id) And (movie_info_idx.info > '9.0') And (info_type.id = movie_info_idx.info_type_id) And (info_type.info = 'rating')
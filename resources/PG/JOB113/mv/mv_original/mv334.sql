select complete_cast.movie_id AS movie_id, complete_cast.status_id AS status_id, complete_cast.subject_id AS subject_id, info_type.id AS id, info_type.info AS info_type_info_4, movie_info_idx.info AS movie_info_idx_info_5
 from movie_info_idx,info_type,complete_cast
 where (complete_cast.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (info_type.info = 'rating')
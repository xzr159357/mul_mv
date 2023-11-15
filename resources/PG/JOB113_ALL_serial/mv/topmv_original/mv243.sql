select info_type.id AS id, info_type.info AS info_type_info_1, movie_info.info AS movie_info_info_2, movie_info.info_type_id AS info_type_id, movie_info.movie_id AS movie_id, movie_info_idx.info AS movie_info_idx_info_5
from info_type, movie_info, movie_info_idx
 where (info_type.info = 'votes') And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id = info_type.id)
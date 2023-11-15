create materialized view if not exists mv242 as select info_type.id AS id, info_type.info AS info_type_info_1, movie_info_idx.info AS movie_info_idx_info_2, movie_info_idx.movie_id AS movie_id
from info_type, movie_info_idx
 where (info_type.info = 'votes') And (movie_info_idx.info_type_id = info_type.id)
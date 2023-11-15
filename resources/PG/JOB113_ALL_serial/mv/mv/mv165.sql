create materialized view if not exists mv165 as select info_type.id AS info_type_id_0, info_type.info AS info_type_info_1, kind_type.id AS kind_type_id_2, kind_type.kind AS kind, movie_info_idx.info AS movie_info_idx_info_4, movie_info_idx.movie_id AS movie_id, title.title AS title
from info_type, kind_type, movie_info_idx, title
 where (info_type.info = 'rating') And (kind_type.kind = 'movie') And (movie_info_idx.info_type_id = info_type.id) And (title.id = movie_info_idx.movie_id) And (title.kind_id = kind_type.id)
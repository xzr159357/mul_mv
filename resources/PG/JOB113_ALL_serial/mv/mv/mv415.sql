create materialized view if not exists mv415 as select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS kind, complete_cast.movie_id AS movie_id, complete_cast.status_id AS status_id, info_type.id AS info_type_id_4, info_type.info AS info_type_info_5, movie_info.info AS movie_info_info_6, movie_info.info_type_id AS info_type_id, movie_info_idx.info AS movie_info_idx_info_8
from comp_cast_type, complete_cast, info_type, movie_info, movie_info_idx
 where (comp_cast_type.kind = 'crew') And (complete_cast.subject_id = comp_cast_type.id) And (info_type.id = movie_info_idx.info_type_id) And (info_type.info = 'rating') And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info_idx.movie_id = complete_cast.movie_id)
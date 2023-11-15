create materialized view if not exists mv437 as select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS kind, complete_cast.movie_id AS movie_id, complete_cast.subject_id AS subject_id, info_type.id AS info_type_id_4, info_type.info AS info_type_info_5, movie_info_idx.info AS movie_info_idx_info_6
from comp_cast_type, complete_cast, info_type, movie_info_idx
 where (comp_cast_type.kind = 'cast') And (comp_cast_type.kind = 'complete') And (complete_cast.status_id = comp_cast_type.id) And (complete_cast.subject_id = comp_cast_type.id) And (info_type.id = movie_info_idx.info_type_id) And (movie_info_idx.movie_id = complete_cast.movie_id)
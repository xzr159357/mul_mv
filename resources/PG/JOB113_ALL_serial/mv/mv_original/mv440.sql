select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS comp_cast_type_kind_1, complete_cast.movie_id AS movie_id, complete_cast.subject_id AS subject_id, info_type.id AS info_type_id_4, info_type.info AS info_type_info_5, kind_type.id AS kind_type_id_6, kind_type.kind AS kind_type_kind_7, movie_info.info AS movie_info_info_8, movie_info.info_type_id AS info_type_id, movie_info_idx.info AS movie_info_idx_info_10, title.production_year AS production_year, title.title AS title
from comp_cast_type, complete_cast, info_type, kind_type, movie_info, movie_info_idx, title
 where (comp_cast_type.kind = 'cast') And (comp_cast_type.kind = 'complete') And (complete_cast.status_id = comp_cast_type.id) And (complete_cast.subject_id = comp_cast_type.id) And (info_type.id = movie_info_idx.info_type_id) And (kind_type.id = title.kind_id) And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info_idx.movie_id = complete_cast.movie_id) And (title.id = movie_info.movie_id) And (title.id = movie_info_idx.movie_id)
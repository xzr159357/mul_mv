create materialized view if not exists mv419 as select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS comp_cast_type_kind_1, complete_cast.movie_id AS movie_id, info_type.id AS info_type_id_3, info_type.info AS info_type_info_4, kind_type.id AS kind_type_id_5, kind_type.kind AS kind_type_kind_6, movie_info_idx.info AS movie_info_idx_info_7, title.production_year AS production_year, title.title AS title
from comp_cast_type, complete_cast, info_type, kind_type, movie_info_idx, title
 where (comp_cast_type.id = complete_cast.status_id) And (comp_cast_type.kind = 'cast') And (comp_cast_type.kind like '%complete%') And (complete_cast.subject_id = comp_cast_type.id) And (info_type.id = movie_info_idx.info_type_id) And (kind_type.id = title.kind_id) And (movie_info_idx.info > '8.0') And (movie_info_idx.movie_id = title.id) And (title.id = complete_cast.movie_id)
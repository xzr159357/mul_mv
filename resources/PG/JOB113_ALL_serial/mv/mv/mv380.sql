create materialized view if not exists mv380 as select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS kind, complete_cast.movie_id AS movie_id, info_type.id AS info_type_id_3, info_type.info AS info_type_info_4, movie_info_idx.info AS movie_info_idx_info_5, title.kind_id AS kind_id, title.production_year AS production_year, title.title AS title
from comp_cast_type, complete_cast, info_type, movie_info_idx, title
 where (comp_cast_type.id = complete_cast.status_id) And (comp_cast_type.kind = 'cast') And (comp_cast_type.kind like '%complete%') And (complete_cast.subject_id = comp_cast_type.id) And (info_type.id = movie_info_idx.info_type_id) And (movie_info_idx.movie_id = title.id) And (title.id = complete_cast.movie_id)
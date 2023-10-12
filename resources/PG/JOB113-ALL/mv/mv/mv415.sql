create materialized view if not exists mv415 as select cast_info.movie_id AS cast_info_movie_id_0, cast_info.person_id AS person_id, cast_info.person_role_id AS person_role_id, comp_cast_type.id AS comp_cast_type_id_3, comp_cast_type.kind AS comp_cast_type_kind_4, info_type.info AS info_type_info_5, keyword.id AS keyword_id_6, keyword.keyword AS keyword, kind_type.id AS kind_type_id_8, kind_type.kind AS kind_type_kind_9, movie_info_idx.info AS movie_info_idx_info_10, movie_info_idx.info_type_id AS info_type_id, movie_info_idx.movie_id AS movie_info_idx_movie_id_12, title.production_year AS production_year, title.title AS title
from cast_info, comp_cast_type, complete_cast, info_type, keyword, kind_type, movie_info_idx, movie_keyword, title
 where (cast_info.movie_id = title.id) And (comp_cast_type.id = complete_cast.status_id) And (comp_cast_type.kind = 'cast') And (comp_cast_type.kind like '%complete%') And (complete_cast.subject_id = comp_cast_type.id) And (info_type.id = movie_info_idx.info_type_id) And (keyword.id = movie_keyword.keyword_id) And (kind_type.id = title.kind_id) And (movie_info_idx.info > '7.0') And (movie_info_idx.movie_id = title.id) And (movie_keyword.movie_id = title.id) And (title.id = complete_cast.movie_id)
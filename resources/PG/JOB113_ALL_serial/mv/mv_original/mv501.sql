select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_id AS person_id, comp_cast_type.id AS comp_cast_type_id_3, comp_cast_type.kind AS kind, complete_cast.subject_id AS subject_id, info_type.id AS info_type_id_6, info_type.info AS info_type_info_7, keyword.id AS keyword_id_8, keyword.keyword AS keyword, movie_info.info AS movie_info_info_10, movie_info_idx.info AS movie_info_idx_info_11, movie_info_idx.info_type_id AS info_type_id, name.gender AS gender, name.name AS name, title.production_year AS production_year, title.title AS title
from cast_info, comp_cast_type, complete_cast, info_type, keyword, movie_info, movie_info_idx, movie_keyword, name, title
 where (cast_info.movie_id = movie_keyword.movie_id) And (comp_cast_type.kind = 'complete+verified') And (comp_cast_type.kind in ('cast', 'crew')) And (complete_cast.status_id = comp_cast_type.id) And (complete_cast.subject_id = comp_cast_type.id) And (info_type.id = movie_info.info_type_id) And (info_type.id = movie_info_idx.info_type_id) And (keyword.id = movie_keyword.keyword_id) And (movie_info.movie_id = movie_keyword.movie_id) And (movie_info_idx.movie_id = movie_keyword.movie_id) And (movie_keyword.movie_id = title.id) And (name.id = cast_info.person_id) And (title.id = cast_info.movie_id) And (title.id = complete_cast.movie_id) And (title.id = movie_info.movie_id) And (title.id = movie_info_idx.movie_id)
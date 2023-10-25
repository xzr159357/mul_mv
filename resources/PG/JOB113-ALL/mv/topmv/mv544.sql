create materialized view if not exists mv544 as select cast_info.movie_id AS cast_info_movie_id_0, cast_info.note AS note, cast_info.person_id AS person_id, comp_cast_type.id AS comp_cast_type_id_3, comp_cast_type.kind AS kind, complete_cast.movie_id AS complete_cast_movie_id_5, complete_cast.subject_id AS subject_id, info_type.id AS info_type_id_7, info_type.info AS info_type_info_8, keyword.id AS keyword_id_9, keyword.keyword AS keyword, movie_info.info AS movie_info_info_11, movie_info_idx.info AS movie_info_idx_info_12, movie_info_idx.info_type_id AS info_type_id, name.gender AS gender, name.name AS name, title.production_year AS production_year, title.title AS title
from cast_info, comp_cast_type, complete_cast, info_type, keyword, movie_info, movie_info_idx, movie_keyword, name, title
 where (cast_info.movie_id = title.id) And (cast_info.note in ('(writer)', '(head writer)', '(written by)', '(story)', '(story editor)')) And (comp_cast_type.kind = 'completeverified') And (comp_cast_type.kind in ('cast', 'crew')) And (complete_cast.status_id = comp_cast_type.id) And (complete_cast.subject_id = comp_cast_type.id) And (info_type.id = movie_info.info_type_id) And (info_type.id = movie_info_idx.info_type_id) And (keyword.id = movie_keyword.keyword_id) And (movie_info.info in ('Horror', 'Thriller')) And (movie_info.movie_id = title.id) And (movie_info_idx.movie_id = complete_cast.movie_id) And (movie_info_idx.movie_id = title.id) And (movie_keyword.movie_id = title.id) And (name.id = cast_info.person_id) And (title.id = movie_info_idx.movie_id)
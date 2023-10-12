create materialized view if not exists mv313 as select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, cast_info.person_role_id AS person_role_id, char_name.name AS name, comp_cast_type.id AS comp_cast_type_id_4, comp_cast_type.kind AS comp_cast_type_kind_5, complete_cast.subject_id AS subject_id, kind_type.id AS kind_type_id_7, kind_type.kind AS kind_type_kind_8, movie_keyword.keyword_id AS keyword_id, title.production_year AS production_year, title.title AS title
from cast_info, char_name, comp_cast_type, complete_cast, kind_type, movie_keyword, title
 where (cast_info.movie_id = title.id) And (char_name.id = cast_info.person_role_id) And (comp_cast_type.kind = 'cast') And (comp_cast_type.kind like '%complete%') And (complete_cast.status_id = comp_cast_type.id) And (complete_cast.subject_id = comp_cast_type.id) And (kind_type.id = title.kind_id) And (movie_keyword.movie_id = title.id) And (title.id = complete_cast.movie_id)
create materialized view if not exists mv480 as select aka_name.person_id AS person_id, cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, comp_cast_type.id AS comp_cast_type_id_5, comp_cast_type.kind AS kind, complete_cast.subject_id AS subject_id, info_type.id AS info_type_id_8, info_type.info AS info_type_info_9, movie_info.info AS movie_info_info_10
from aka_name, cast_info, comp_cast_type, complete_cast, info_type, movie_info
 where (aka_name.person_id = cast_info.person_id) And (cast_info.movie_id = movie_info.movie_id) And (comp_cast_type.kind = 'cast') And (comp_cast_type.kind = 'complete+verified') And (complete_cast.status_id = comp_cast_type.id) And (complete_cast.subject_id = comp_cast_type.id) And (info_type.id = movie_info.info_type_id) And (movie_info.movie_id = complete_cast.movie_id)
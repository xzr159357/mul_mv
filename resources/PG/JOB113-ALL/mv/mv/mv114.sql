create materialized view if not exists mv114 as select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_id AS person_id, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, role_type.role AS role
from cast_info, role_type
 where (cast_info.note = '(voice)') And (cast_info.role_id = role_type.id) And (role_type.role = 'actress')
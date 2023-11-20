create materialized view if not exists mv281 as select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_id AS person_id, role_type.id AS id, role_type.role AS role
from cast_info, char_name, role_type
 where (cast_info.person_role_id = char_name.id) And (cast_info.role_id = role_type.id) And (char_name.id = cast_info.person_role_id) And (role_type.role = 'actress')
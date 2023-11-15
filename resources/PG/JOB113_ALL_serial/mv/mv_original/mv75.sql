select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, cast_info.role_id AS role_id, role_type.role AS role, title.title AS title
from cast_info, name, role_type, title
 where (cast_info.role_id = role_type.id) And (name.id = cast_info.person_id) And (role_type.role = 'costume designer') And (title.id = cast_info.movie_id)
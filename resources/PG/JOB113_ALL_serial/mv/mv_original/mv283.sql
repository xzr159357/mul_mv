select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_id AS person_id, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, movie_info.info_type_id AS info_type_id, name.gender AS gender, name.name AS name, role_type.role AS role, title.production_year AS production_year, title.title AS title
from cast_info, char_name, movie_info, name, role_type, title
 where (cast_info.role_id = role_type.id) And (char_name.id = cast_info.person_role_id) And (movie_info.movie_id = title.id) And (name.id = cast_info.person_id) And (role_type.role = 'actress') And (title.id = cast_info.movie_id)
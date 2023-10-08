select aka_name.person_id AS person_id, cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.role_id AS role_id, char_name.id AS id, name.gender AS gender, name.name AS name, role_type.role AS role
 from name,role_type,char_name,aka_name,cast_info
 where (name.id = cast_info.person_id) And (aka_name.person_id = name.id) And (cast_info.role_id = role_type.id) And (role_type.role = 'actress') And (char_name.id = cast_info.person_role_id) And (cast_info.note = '(voice)')
select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_id AS person_id, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, char_name.name AS char_name_name_5, name.gender AS gender, name.name AS name_name_7, role_type.role AS role
 from name,role_type,char_name,cast_info
 where (name.id = cast_info.person_id) And (cast_info.role_id = role_type.id) And (role_type.role = 'actress') And (char_name.id = cast_info.person_role_id) And (cast_info.note in ('(voice)', '(voice: Japanese version)', '(voice) (uncredited)', '(voice: English version)'))
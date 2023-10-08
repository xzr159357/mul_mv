select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, char_name.name AS name
 from char_name,cast_info,role_type
 where (cast_info.person_role_id = char_name.id) And (cast_info.role_id = role_type.id) And (cast_info.note like '%(producer)%')
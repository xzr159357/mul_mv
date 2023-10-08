create materialized view if not exists mv69 as select aka_name.name AS aka_name_name_0, cast_info.note AS note, name.name AS name_name_2, role_type.id AS role_type_id_3, role_type.role AS role, title.id AS title_id_5, title.title AS title
 from title,name,role_type,aka_name,cast_info
 where (title.id = cast_info.movie_id) And (name.id = aka_name.person_id) And (cast_info.role_id = role_type.id) And (role_type.role = 'actress') And (aka_name.person_id = name.id) And (cast_info.note = '(voice: English version)') And (name.id = cast_info.person_id)
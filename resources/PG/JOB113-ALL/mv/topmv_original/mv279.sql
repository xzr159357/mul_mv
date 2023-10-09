select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_id AS person_id, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, info_type.id AS id, info_type.info AS info_type_info_6, movie_info.info AS movie_info_info_7, role_type.role AS role
 from info_type,role_type,movie_info,cast_info
 where (movie_info.info_type_id = info_type.id) And (info_type.info = 'release dates') And (cast_info.role_id = role_type.id) And (role_type.role = 'actress') And (cast_info.movie_id = movie_info.movie_id) And (movie_info.info IS NOT NULL)  And  (((movie_info.info = '__LIKE__Japan:%200%')) Or ((movie_info.info = '__LIKE__USA:%200%'))) And (cast_info.note in ('(voice)', '(voice: Japanese version)', '(voice) (uncredited)', '(voice: English version)'))
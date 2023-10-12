create materialized view if not exists mv287 as select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_id AS person_id, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, info_type.id AS id, info_type.info AS info_type_info_6, movie_info.info AS movie_info_info_7, role_type.role AS role
from cast_info, info_type, movie_info, role_type
 where (cast_info.movie_id = movie_info.movie_id) And (cast_info.note = '(voice)') And (cast_info.role_id = role_type.id) And (info_type.info = 'release dates') And (movie_info.info IS NOT NULL)  And  (((movie_info.info = '__LIKE__Japan:%2007%')) Or ((movie_info.info = '__LIKE__USA:%2008%'))) And (movie_info.info_type_id = info_type.id) And (role_type.role = 'actress')
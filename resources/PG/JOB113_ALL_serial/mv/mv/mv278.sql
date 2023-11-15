create materialized view if not exists mv278 as select aka_name.person_id AS person_id, cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, info_type.id AS id, info_type.info AS info_type_info_6, movie_info.info AS movie_info_info_7, name.gender AS gender, name.name AS name, role_type.role AS role, title.production_year AS production_year, title.title AS title
from aka_name, cast_info, info_type, movie_info, name, role_type, title
 where (aka_name.person_id = cast_info.person_id) And (cast_info.movie_id = title.id) And (cast_info.role_id = role_type.id) And (info_type.info = 'release dates') And (movie_info.info IS NOT NULL)  And  (((movie_info.info like 'Japan:%200%')) Or ((movie_info.info like 'USA:%200%'))) And (movie_info.info_type_id = info_type.id) And (name.id = aka_name.person_id) And (name.id = cast_info.person_id) And (role_type.role = 'actress') And (title.id = movie_info.movie_id)
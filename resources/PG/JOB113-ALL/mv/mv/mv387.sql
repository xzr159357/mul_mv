create materialized view if not exists mv387 as select aka_name.person_id AS person_id, cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, char_name.name AS name, info_type.id AS id, info_type.info AS info_type_info_7, movie_info.info AS movie_info_info_8, title.production_year AS production_year, title.title AS title
from aka_name, cast_info, char_name, info_type, movie_info, title
 where (aka_name.person_id = cast_info.person_id) And (cast_info.movie_id = title.id) And (cast_info.note in ('(voice)', '(voice: Japanese version)', '(voice) (uncredited)', '(voice: English version)')) And (char_name.id = cast_info.person_role_id) And (info_type.info = 'release dates') And (movie_info.info IS NOT NULL)  And  (((movie_info.info = '__LIKE__Japan:%201%')) Or ((movie_info.info = '__LIKE__USA:%201%'))) And (movie_info.info_type_id = info_type.id) And (title.id = movie_info.movie_id)
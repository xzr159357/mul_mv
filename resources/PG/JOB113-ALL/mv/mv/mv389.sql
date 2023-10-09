create materialized view if not exists mv389 as select aka_name.person_id AS person_id, cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, char_name.name AS name, info_type.id AS id, info_type.info AS info_type_info_7, movie_info.info AS movie_info_info_8, movie_keyword.keyword_id AS keyword_id, role_type.role AS role, title.production_year AS production_year, title.title AS title
 from role_type,movie_keyword,cast_info,aka_name,title,movie_info,char_name,info_type
 where (role_type.id = cast_info.role_id) And (movie_keyword.movie_id = title.id) And (aka_name.person_id = cast_info.person_id) And (cast_info.movie_id = title.id) And (cast_info.note in ('(voice)', '(voice: Japanese version)', '(voice) (uncredited)', '(voice: English version)')) And (char_name.id = cast_info.person_role_id) And (title.id = movie_info.movie_id) And (movie_info.info_type_id = info_type.id) And (movie_info.info IS NOT NULL)  And  (((movie_info.info = '__LIKE__Japan:%201%')) Or ((movie_info.info = '__LIKE__USA:%201%'))) And (info_type.info = 'release dates')
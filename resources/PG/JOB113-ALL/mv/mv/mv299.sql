create materialized view if not exists mv299 as select cast_info.movie_id AS cast_info_movie_id_0, cast_info.note AS note, cast_info.role_id AS role_id, char_name.id AS char_name_id_3, company_name.country_code AS country_code, company_name.id AS company_name_id_5, info_type.id AS info_type_id_6, info_type.info AS info_type_info_7, movie_companies.movie_id AS movie_companies_movie_id_8, movie_info.info AS movie_info_info_9, name.gender AS gender, name.name AS name, role_type.role AS role, title.production_year AS production_year, title.title AS title
from aka_name, cast_info, char_name, company_name, info_type, movie_companies, movie_info, name, role_type, title
 where (aka_name.person_id = name.id) And (cast_info.movie_id = movie_info.movie_id) And (cast_info.note in ('(voice)', '(voice: Japanese version)', '(voice) (uncredited)', '(voice: English version)')) And (cast_info.person_id = name.id) And (cast_info.role_id = role_type.id) And (char_name.id = cast_info.person_role_id) And (company_name.id = movie_companies.company_id) And (info_type.info = 'release dates') And (movie_companies.movie_id = movie_info.movie_id) And (movie_info.info IS NOT NULL)  And  (((movie_info.info = '__LIKE__Japan:%200%')) Or ((movie_info.info = '__LIKE__USA:%200%'))) And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = title.id) And (name.id = aka_name.person_id) And (name.id = cast_info.person_id) And (role_type.role = 'actress') And (title.id = movie_companies.movie_id)
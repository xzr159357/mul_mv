select aka_name.person_id AS person_id, cast_info.movie_id AS cast_info_movie_id_1, cast_info.note AS note, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, company_name.country_code AS country_code, company_name.id AS company_name_id_6, info_type.id AS info_type_id_7, info_type.info AS info_type_info_8, keyword.id AS keyword_id_9, keyword.keyword AS keyword, movie_info.info AS movie_info_info_11, movie_keyword.movie_id AS movie_keyword_movie_id_12, name.gender AS gender, name.name AS name, role_type.role AS role, title.production_year AS production_year, title.title AS title
from aka_name, cast_info, company_name, info_type, keyword, movie_companies, movie_info, movie_keyword, name, role_type, title
 where (aka_name.person_id = cast_info.person_id) And (cast_info.movie_id = title.id) And (cast_info.note in ('(voice)', '(voice: Japanese version)', '(voice) (uncredited)', '(voice: English version)')) And (cast_info.person_id = name.id) And (cast_info.role_id = role_type.id) And (company_name.id = movie_companies.company_id) And (info_type.info = 'release dates') And (keyword.id = movie_keyword.keyword_id) And (movie_companies.movie_id = title.id) And (movie_info.info IS NOT NULL)  And  (((movie_info.info = '__LIKE__Japan:%201%')) Or ((movie_info.info = '__LIKE__USA:%201%'))) And (movie_info.info_type_id = info_type.id) And (movie_keyword.movie_id = title.id) And (name.id = aka_name.person_id) And (role_type.role = 'actress') And (title.id = movie_info.movie_id)
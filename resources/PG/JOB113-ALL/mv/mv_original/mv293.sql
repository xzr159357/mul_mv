select aka_name.person_id AS person_id, cast_info.movie_id AS movie_id, cast_info.note AS cast_info_note_2, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, company_name.country_code AS country_code, company_name.id AS company_name_id_6, info_type.id AS info_type_id_7, info_type.info AS info_type_info_8, movie_companies.note AS movie_companies_note_9, movie_info.info AS movie_info_info_10, name.gender AS gender, name.name AS name, role_type.role AS role, title.production_year AS production_year, title.title AS title
from aka_name, cast_info, char_name, company_name, info_type, movie_companies, movie_info, name, role_type, title
 where (aka_name.person_id = cast_info.person_id) And (cast_info.movie_id = movie_info.movie_id) And (cast_info.note = '(voice)') And (cast_info.person_id = name.id) And (cast_info.role_id = role_type.id) And (char_name.id = cast_info.person_role_id) And (company_name.id = movie_companies.company_id) And (info_type.info = 'release dates') And (movie_companies.movie_id = movie_info.movie_id) And (movie_companies.note like '%(200%)%')  And  (((movie_companies.note like '%(USA)%')) Or ((movie_companies.note like '%(worldwide)%'))) And (movie_info.info IS NOT NULL)  And  (((movie_info.info = '__LIKE__Japan:%2007%')) Or ((movie_info.info = '__LIKE__USA:%2008%'))) And (movie_info.info_type_id = info_type.id) And (name.id = aka_name.person_id) And (name.id = cast_info.person_id) And (role_type.role = 'actress') And (title.id = movie_info.movie_id)
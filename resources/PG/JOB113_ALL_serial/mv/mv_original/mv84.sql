select aka_name.name AS aka_name_name_0, aka_name.person_id AS person_id, cast_info.movie_id AS movie_id, cast_info.note AS cast_info_note_3, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, char_name.name AS char_name_name_6, company_name.country_code AS country_code, company_name.id AS company_name_id_8, movie_companies.note AS movie_companies_note_9, name.gender AS gender, name.name AS name_name_11, role_type.role AS role, title.id AS title_id_13, title.production_year AS production_year, title.title AS title
from aka_name, cast_info, char_name, company_name, movie_companies, name, role_type, title
 where (aka_name.person_id = name.id) And (cast_info.person_id = aka_name.person_id) And (cast_info.role_id = role_type.id) And (char_name.id = cast_info.person_role_id) And (company_name.id = movie_companies.company_id) And (movie_companies.movie_id = cast_info.movie_id) And (name.id = cast_info.person_id) And (name.name like '%Ang%')  And  (name.gender = 'f') And (role_type.role = 'actress') And (title.id = cast_info.movie_id)
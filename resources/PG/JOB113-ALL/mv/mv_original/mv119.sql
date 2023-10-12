select aka_name.name AS aka_name_name_0, aka_name.person_id AS person_id, cast_info.note AS cast_info_note_2, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, char_name.name AS char_name_name_5, company_name.country_code AS country_code, company_name.id AS id, movie_companies.note AS movie_companies_note_8, name.gender AS gender, name.name AS name_name_10, role_type.role AS role
from aka_name, cast_info, char_name, company_name, movie_companies, name, role_type
 where (aka_name.person_id = cast_info.person_id) And (aka_name.person_id = name.id) And (cast_info.movie_id = movie_companies.movie_id) And (cast_info.note = '(voice)') And (cast_info.person_id = name.id) And (cast_info.role_id = role_type.id) And (char_name.id = cast_info.person_role_id) And (company_name.id = movie_companies.company_id) And (movie_companies.movie_id = cast_info.movie_id) And (movie_companies.note like '%(200%)%')  And  (((movie_companies.note like '%(USA)%')) Or ((movie_companies.note like '%(worldwide)%'))) And (name.id = aka_name.person_id) And (name.id = cast_info.person_id) And (role_type.role = 'actress')
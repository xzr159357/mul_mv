select aka_name.name AS aka_name_name_0, aka_name.person_id AS person_id, cast_info.movie_id AS movie_id, cast_info.note AS cast_info_note_3, cast_info.role_id AS role_id, company_name.country_code AS country_code, company_name.id AS id, movie_companies.note AS movie_companies_note_7, name.name AS name_name_8, role_type.role AS role, title.title AS title
from aka_name, cast_info, company_name, movie_companies, name, role_type, title
 where (aka_name.person_id = cast_info.person_id) And (cast_info.movie_id = title.id) And (company_name.country_code = '[jp]') And (movie_companies.company_id = company_name.id) And (movie_companies.note like '%(Japan)%')  And  (movie_companies.note not like '%(USA)%') And (name.id = aka_name.person_id) And (role_type.id = cast_info.role_id) And (title.id = movie_companies.movie_id)
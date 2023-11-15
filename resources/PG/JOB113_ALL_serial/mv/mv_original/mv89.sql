select cast_info.movie_id AS movie_id, cast_info.note AS cast_info_note_1, cast_info.person_id AS person_id, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, company_name.country_code AS country_code, company_name.id AS id, movie_companies.note AS movie_companies_note_7, name.gender AS gender, name.name AS name, role_type.role AS role, title.production_year AS production_year, title.title AS title
from cast_info, company_name, movie_companies, name, role_type, title
 where (cast_info.movie_id = title.id) And (cast_info.role_id = role_type.id) And (company_name.country_code = '[us]') And (movie_companies.company_id = company_name.id) And (movie_companies.note like '%(200%)%')  And  (((movie_companies.note like '%(USA)%')) Or ((movie_companies.note like '%(worldwide)%'))) And (name.id = cast_info.person_id) And (role_type.role = 'actress') And (title.id = movie_companies.movie_id) And (title.production_year >= 2007)  And  (title.production_year <= 2010)
create materialized view if not exists mv58 as select cast_info.movie_id AS movie_id, cast_info.note AS cast_info_note_1, cast_info.person_id AS person_id, cast_info.role_id AS role_id, company_name.country_code AS country_code, company_name.id AS id, movie_companies.note AS movie_companies_note_6, role_type.role AS role, title.title AS title
from cast_info, company_name, movie_companies, role_type, title
 where (cast_info.movie_id = title.id) And (company_name.country_code = '[jp]') And (movie_companies.company_id = company_name.id) And (movie_companies.note like '%(Japan)%')  And  (movie_companies.note not like '%(USA)%') And (role_type.id = cast_info.role_id) And (title.id = movie_companies.movie_id)
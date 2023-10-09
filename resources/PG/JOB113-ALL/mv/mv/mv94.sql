create materialized view if not exists mv94 as select aka_name.name AS name, aka_name.person_id AS person_id, cast_info.movie_id AS movie_id, cast_info.note AS cast_info_note_3, cast_info.role_id AS role_id, company_name.country_code AS country_code, company_name.id AS id, movie_companies.note AS movie_companies_note_7, role_type.role AS role
 from company_name,role_type,cast_info,aka_name,movie_companies
 where (company_name.id = movie_companies.company_id) And (cast_info.role_id = role_type.id) And (role_type.role = 'actress') And (aka_name.person_id = cast_info.person_id) And (cast_info.movie_id = movie_companies.movie_id) And (cast_info.note = '(voice: English version)') And (movie_companies.note like '%(Japan)%')  And  (movie_companies.note not like '%(USA)%')  And  (((movie_companies.note like '%(2006)%')) Or ((movie_companies.note like '%(2007)%')))
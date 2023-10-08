create materialized view if not exists mv75 as select aka_name.name AS aka_name_name_0, aka_name.person_id AS person_id, cast_info.movie_id AS movie_id, cast_info.note AS cast_info_note_3, cast_info.role_id AS role_id, company_name.country_code AS country_code, movie_companies.note AS movie_companies_note_6, name.name AS name_name_7, role_type.role AS role, title.id AS id, title.production_year AS production_year, title.title AS title
 from movie_companies,title,name,role_type,aka_name,company_name,cast_info
 where (movie_companies.movie_id = cast_info.movie_id) And (movie_companies.note like '%(Japan)%')  And  (movie_companies.note not like '%(USA)%')  And  (((movie_companies.note like '%(2006)%')) Or ((movie_companies.note like '%(2007)%'))) And (movie_companies.company_id = company_name.id) And (title.id = cast_info.movie_id) And (name.id = aka_name.person_id) And (cast_info.role_id = role_type.id) And (role_type.role = 'actress') And (aka_name.person_id = cast_info.person_id) And (company_name.id = movie_companies.company_id) And (cast_info.note = '(voice: English version)')
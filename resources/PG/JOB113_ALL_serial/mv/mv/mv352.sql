create materialized view if not exists mv352 as select aka_name.person_id AS person_id, cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, char_name.name AS char_name_name_5, company_name.country_code AS country_code, company_name.id AS id, company_name.name AS company_name_name_8, movie_info.info AS info, movie_info.info_type_id AS info_type_id, name.gender AS gender, name.name AS name_name_12, role_type.role AS role, title.production_year AS production_year, title.title AS title
from aka_name, cast_info, char_name, company_name, movie_companies, movie_info, name, role_type, title
 where (aka_name.person_id = cast_info.person_id) And (cast_info.movie_id = movie_companies.movie_id) And (cast_info.role_id = role_type.id) And (char_name.id = cast_info.person_role_id) And (company_name.country_code = '[us]')  And  (company_name.name = 'DreamWorks Animation') And (movie_companies.company_id = company_name.id) And (movie_info.movie_id = movie_companies.movie_id) And (name.id = aka_name.person_id) And (name.id = cast_info.person_id) And (role_type.role = 'actress') And (title.id = cast_info.movie_id) And (title.id = movie_companies.movie_id) And (title.id = movie_info.movie_id)
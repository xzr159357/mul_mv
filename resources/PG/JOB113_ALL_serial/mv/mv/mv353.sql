create materialized view if not exists mv353 as select aka_name.person_id AS person_id, cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, char_name.name AS char_name_name_5, company_name.country_code AS country_code, company_name.name AS company_name_name_7, info_type.id AS info_type_id_8, info_type.info AS info_type_info_9, movie_info.info AS movie_info_info_10, name.gender AS gender, name.id AS name_id_12, name.name AS name_name_13, role_type.role AS role, title.production_year AS production_year, title.title AS title
from aka_name, cast_info, char_name, company_name, info_type, movie_companies, movie_info, name, role_type, title
 where (aka_name.person_id = cast_info.person_id) And (aka_name.person_id = name.id) And (cast_info.movie_id = movie_companies.movie_id) And (cast_info.role_id = role_type.id) And (char_name.id = cast_info.person_role_id) And (company_name.country_code = '[us]')  And  (company_name.name = 'DreamWorks Animation') And (company_name.id = movie_companies.company_id) And (info_type.info = 'release dates') And (movie_companies.company_id = company_name.id) And (movie_companies.movie_id = movie_info.movie_id) And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = title.id) And (name.id = cast_info.person_id) And (role_type.role = 'actress') And (title.id = cast_info.movie_id) And (title.id = movie_companies.movie_id)
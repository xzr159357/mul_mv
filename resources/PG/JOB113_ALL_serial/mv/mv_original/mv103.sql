select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_id AS person_id, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, char_name.name AS char_name_name_5, company_name.country_code AS country_code, company_name.id AS id, name.gender AS gender, name.name AS name_name_9, role_type.role AS role
from cast_info, char_name, company_name, movie_companies, name, role_type
 where (cast_info.role_id = role_type.id) And (char_name.id = cast_info.person_role_id) And (company_name.id = movie_companies.company_id) And (movie_companies.movie_id = cast_info.movie_id) And (name.id = cast_info.person_id) And (role_type.role = 'actress')
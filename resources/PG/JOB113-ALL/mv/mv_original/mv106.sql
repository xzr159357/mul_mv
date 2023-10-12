select aka_name.name AS name, cast_info.role_id AS role_id, company_name.country_code AS country_code, company_name.id AS company_name_id_3, movie_companies.movie_id AS movie_id, role_type.id AS role_type_id_5, role_type.role AS role, title.title AS title
from aka_name, cast_info, company_name, movie_companies, name, role_type, title
 where (aka_name.person_id = name.id) And (cast_info.movie_id = movie_companies.movie_id) And (cast_info.role_id = role_type.id) And (company_name.country_code = '[us]') And (movie_companies.company_id = company_name.id) And (name.id = aka_name.person_id) And (name.id = cast_info.person_id) And (role_type.role = 'costume designer') And (title.id = cast_info.movie_id)
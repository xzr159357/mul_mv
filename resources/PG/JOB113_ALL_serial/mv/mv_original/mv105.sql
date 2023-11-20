select aka_name.name AS aka_name_name_0, aka_name.person_id AS person_id, cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.role_id AS role_id, char_name.id AS char_name_id_5, char_name.name AS char_name_name_6, company_name.country_code AS country_code, company_name.id AS company_name_id_8, name.gender AS gender, name.name AS name_name_10, role_type.role AS role, title.title AS title
from aka_name, cast_info, char_name, company_name, movie_companies, name, role_type, title
 where (aka_name.person_id = name.id) And (cast_info.movie_id = title.id) And (cast_info.role_id = role_type.id) And (char_name.id = cast_info.person_role_id) And (company_name.id = movie_companies.company_id) And (movie_companies.movie_id = cast_info.movie_id) And (name.id = cast_info.person_id) And (role_type.role = 'actress') And (title.id = movie_companies.movie_id)
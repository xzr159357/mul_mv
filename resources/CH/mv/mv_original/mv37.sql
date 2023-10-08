select cast_info.note AS note, cast_info.movie_id AS movie_id, char_name.name AS name, movie_companies.company_id AS company_id, cast_info.person_role_id AS person_role_id, company_name.country_code AS country_code, movie_companies.company_type_id AS company_type_id, role_type.id AS id, role_type.role AS role
 from char_name,cast_info,company_type,company_name,role_type,movie_companies
 where (char_name.id = cast_info.person_role_id) And (cast_info.movie_id = movie_companies.movie_id) And (role_type.id = cast_info.role_id) And ((cast_info.note like '%(producer)%')) And (company_type.id = movie_companies.company_type_id) And (company_name.id = movie_companies.company_id) And (company_name.country_code = '[ru]') And (role_type.role = 'actor')
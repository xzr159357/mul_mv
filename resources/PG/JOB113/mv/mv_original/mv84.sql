select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, cast_info.role_id AS role_id, company_name.country_code AS country_code, company_name.id AS id, role_type.role AS role
 from role_type,movie_companies,cast_info,company_name,name
 where (cast_info.role_id = role_type.id) And (role_type.role = 'costume designer') And (cast_info.movie_id = movie_companies.movie_id) And (movie_companies.company_id = company_name.id) And (name.id = cast_info.person_id) And (company_name.country_code = '[us]')
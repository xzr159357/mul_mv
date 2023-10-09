select cast_info.note AS note, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, company_name.country_code AS country_code, movie_companies.company_type_id AS company_type_id, role_type.role AS role
 from movie_companies,company_name,role_type,cast_info
 where (cast_info.movie_id = movie_companies.movie_id) And (movie_companies.company_id = company_name.id) And (company_name.id = movie_companies.company_id) And (cast_info.role_id = role_type.id) And (role_type.role = 'actor') And (movie_companies.movie_id = cast_info.movie_id) And (cast_info.note like '%(producer)%')
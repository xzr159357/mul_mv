select aka_name.name AS name, aka_name.person_id AS person_id, cast_info.movie_id AS movie_id, company_name.country_code AS country_code, company_name.id AS company_name_id_4, role_type.id AS role_type_id_5, role_type.role AS role, title.title AS title
 from movie_companies,title,name,role_type,aka_name,company_name,cast_info
 where (cast_info.movie_id = movie_companies.movie_id) And (movie_companies.company_id = company_name.id) And (title.id = cast_info.movie_id) And (name.id = cast_info.person_id) And (aka_name.person_id = name.id) And (cast_info.role_id = role_type.id) And (role_type.role = 'writer') And (company_name.country_code = '[us]')
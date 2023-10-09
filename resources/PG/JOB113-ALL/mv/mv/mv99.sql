create materialized view if not exists mv99 as select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, cast_info.role_id AS role_id, company_name.country_code AS country_code, company_name.id AS id, role_type.role AS role
 from company_name,name,role_type,cast_info,movie_companies
 where (movie_companies.company_id = company_name.id) And (company_name.country_code = '[us]') And (name.id = cast_info.person_id) And (cast_info.role_id = role_type.id) And (role_type.role = 'writer') And (cast_info.movie_id = movie_companies.movie_id)
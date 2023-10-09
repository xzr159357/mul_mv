create materialized view if not exists mv131 as select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, char_name.name AS name, company_name.country_code AS country_code, company_name.id AS company_name_id_6, company_type.id AS company_type_id_7, role_type.role AS role, title.production_year AS production_year, title.title AS title
 from company_name,role_type,cast_info,company_type,title,movie_companies,char_name
 where (company_name.id = movie_companies.company_id) And (role_type.id = cast_info.role_id) And (movie_companies.movie_id = cast_info.movie_id) And (cast_info.note like '%(voice)%')  And  (cast_info.note like '%(uncredited)%') And (char_name.id = cast_info.person_role_id) And (company_type.id = movie_companies.company_type_id) And (title.id = movie_companies.movie_id)
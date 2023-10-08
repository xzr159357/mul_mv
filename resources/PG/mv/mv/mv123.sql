create materialized view if not exists mv123 as select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, char_name.name AS name, company_name.country_code AS country_code, company_name.id AS id, movie_companies.company_type_id AS company_type_id, title.production_year AS production_year, title.title AS title
 from movie_companies,title,role_type,char_name,company_name,cast_info
 where (movie_companies.movie_id = title.id) And (movie_companies.company_id = company_name.id) And (cast_info.movie_id = title.id) And (title.production_year > 1990) And (cast_info.role_id = role_type.id) And (cast_info.person_role_id = char_name.id) And (company_name.country_code = '[us]') And (cast_info.note like '%(producer)%')
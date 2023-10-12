create materialized view if not exists mv140 as select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, char_name.name AS name, company_name.country_code AS country_code, company_name.id AS id, movie_companies.company_type_id AS company_type_id, title.production_year AS production_year, title.title AS title
from cast_info, char_name, company_name, movie_companies, title
 where (cast_info.movie_id = movie_companies.movie_id) And (cast_info.note like '%(producer)%') And (char_name.id = cast_info.person_role_id) And (company_name.country_code = '[us]') And (movie_companies.company_id = company_name.id) And (title.id = movie_companies.movie_id)
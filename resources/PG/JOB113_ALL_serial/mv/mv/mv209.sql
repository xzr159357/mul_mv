create materialized view if not exists mv209 as select aka_title.movie_id AS movie_id, company_name.country_code AS country_code, company_name.id AS company_name_id_2, company_name.name AS name, company_type.id AS company_type_id_4, movie_companies.note AS note
from aka_title, company_name, company_type, movie_companies
 where (aka_title.movie_id = movie_companies.movie_id) And (company_name.country_code = '[us]')  And  (company_name.name = 'YouTube') And (movie_companies.company_id = company_name.id) And (movie_companies.company_type_id = company_type.id)
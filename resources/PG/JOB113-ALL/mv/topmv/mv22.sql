create materialized view if not exists mv22 as select company_name.country_code AS country_code, company_name.id AS id, company_name.name AS name, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_id
from company_name, movie_companies
 where (company_name.country_code = '[us]') And (movie_companies.company_id = company_name.id)
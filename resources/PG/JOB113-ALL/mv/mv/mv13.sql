create materialized view if not exists mv13 as select company_name.country_code AS country_code, company_name.id AS id, movie_companies.movie_id AS movie_id
from company_name, movie_companies
 where (company_name.country_code = '[de]') And (movie_companies.company_id = company_name.id)
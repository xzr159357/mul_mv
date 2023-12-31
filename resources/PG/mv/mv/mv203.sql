create materialized view if not exists mv203 as select company_name.country_code AS country_code, company_name.id AS id, company_name.name AS name, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_id, movie_companies.note AS note
 from company_name,movie_companies
 where (company_name.id = movie_companies.company_id) And (company_name.country_code = '[us]')  And  (company_name.name = 'YouTube') And (movie_companies.note like '%(200%)%')  And  (movie_companies.note like '%(worldwide)%')
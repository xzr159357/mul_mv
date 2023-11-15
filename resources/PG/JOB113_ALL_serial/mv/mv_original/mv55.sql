select company_name.country_code AS country_code, company_name.id AS id, movie_companies.movie_id AS movie_id, movie_companies.note AS note
from company_name, movie_companies
 where (company_name.country_code = '[jp]') And (movie_companies.company_id = company_name.id) And (movie_companies.note like '%(Japan)%')  And  (movie_companies.note not like '%(USA)%')
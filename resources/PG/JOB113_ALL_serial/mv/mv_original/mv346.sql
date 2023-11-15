select company_name.country_code AS country_code, company_name.id AS id, company_name.name AS name, movie_companies.movie_id AS movie_id, title.production_year AS production_year, title.title AS title
from company_name, movie_companies, title
 where (company_name.country_code = '[us]')  And  (company_name.name = 'DreamWorks Animation') And (movie_companies.company_id = company_name.id) And (title.id = movie_companies.movie_id)
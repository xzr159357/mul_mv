select aka_title.movie_id AS movie_id, company_name.country_code AS country_code, company_name.id AS id, movie_companies.company_type_id AS company_type_id, movie_companies.note AS note
from aka_title, company_name, movie_companies
 where (aka_title.movie_id = movie_companies.movie_id) And (company_name.country_code = '[us]') And (movie_companies.company_id = company_name.id) And (movie_companies.note like '%(200%)%')  And  (movie_companies.note like '%(worldwide)%')
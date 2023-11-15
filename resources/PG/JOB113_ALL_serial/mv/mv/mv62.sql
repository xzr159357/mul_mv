create materialized view if not exists mv62 as select company_name.country_code AS country_code, company_name.id AS id, movie_companies.movie_id AS movie_id, movie_companies.note AS note, title.production_year AS production_year, title.title AS title
from company_name, movie_companies, title
 where (company_name.id = movie_companies.company_id) And (movie_companies.note like '%(Japan)%')  And  (movie_companies.note not like '%(USA)%')  And  (((movie_companies.note like '%(2006)%')) Or ((movie_companies.note like '%(2007)%'))) And (title.id = movie_companies.movie_id)
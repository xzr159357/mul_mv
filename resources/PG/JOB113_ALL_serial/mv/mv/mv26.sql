create materialized view if not exists mv26 as select company_type.id AS id, company_type.kind AS kind, movie_companies.movie_id AS movie_id, movie_companies.note AS note, title.production_year AS production_year, title.title AS title
from company_type, movie_companies, title
 where (company_type.id = movie_companies.company_type_id) And (company_type.kind = 'production companies') And (movie_companies.note like '%(VHS)%')  And  (movie_companies.note like '%(USA)%')  And  (movie_companies.note like '%(1994)%') And (title.id = movie_companies.movie_id)
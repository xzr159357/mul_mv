select company_type.id AS id, company_type.kind AS kind, movie_companies.movie_id AS movie_id, movie_companies.note AS note
from company_type, movie_companies
 where (company_type.id = movie_companies.company_type_id) And (company_type.kind = 'production companies') And (movie_companies.note not like '%(TV)%')  And  (movie_companies.note like '%(USA)%')
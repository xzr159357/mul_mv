select company_type.id AS id, company_type.kind AS kind, movie_companies.company_id AS company_id, movie_companies.movie_id AS movie_id, movie_companies.note AS note
from company_type, movie_companies
 where (company_type.kind = 'production companies') And (movie_companies.company_type_id = company_type.id) And (movie_companies.note IS NULL)
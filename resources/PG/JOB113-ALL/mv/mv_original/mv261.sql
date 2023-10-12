select company_name.id AS id, movie_companies.movie_id AS movie_id
from company_name, movie_companies
 where (movie_companies.company_id = company_name.id)
select company_type.kind AS kind, info_type.id AS id, info_type.info AS info, movie_companies.company_id AS company_id, movie_companies.movie_id AS movie_id, title.production_year AS production_year, title.title AS title
from company_type, info_type, movie_companies, movie_info_idx, title
 where (company_type.id = movie_companies.company_type_id) And (info_type.info = 'bottom 10 rank') And (movie_companies.company_type_id = company_type.id) And (movie_companies.movie_id = movie_info_idx.movie_id) And (movie_companies.movie_id = title.id) And (movie_info_idx.info_type_id = info_type.id) And (title.id = movie_companies.movie_id)
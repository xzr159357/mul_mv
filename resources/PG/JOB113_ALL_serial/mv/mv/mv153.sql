create materialized view if not exists mv153 as select company_name.country_code AS country_code, company_name.id AS company_name_id_1, company_type.id AS company_type_id_2, company_type.kind AS kind, info_type.id AS info_type_id_4, info_type.info AS info, movie_companies.movie_id AS movie_id, title.production_year AS production_year, title.title AS title
from company_name, company_type, info_type, movie_companies, movie_info_idx, title
 where (company_name.id = movie_companies.company_id) And (company_type.id = movie_companies.company_type_id) And (info_type.info = 'bottom 10 rank') And (movie_companies.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (title.id = movie_companies.movie_id) And (title.id = movie_info_idx.movie_id)
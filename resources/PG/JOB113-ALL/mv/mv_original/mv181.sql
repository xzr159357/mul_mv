select company_name.country_code AS country_code, company_name.id AS company_name_id_1, company_type.id AS company_type_id_2, company_type.kind AS kind, info_type.id AS info_type_id_4, info_type.info AS info_type_info_5, movie_companies.movie_id AS movie_id, movie_info.info AS movie_info_info_7, movie_info_idx.info_type_id AS info_type_id
from company_name, company_type, info_type, movie_companies, movie_info, movie_info_idx
 where (company_name.id = movie_companies.company_id) And (company_type.kind IS NOT NULL)  And  (((company_type.kind = 'production companies')) Or ((company_type.kind = 'distributors'))) And (info_type.info = 'bottom 10 rank') And (info_type.info = 'budget') And (movie_companies.company_type_id = company_type.id) And (movie_companies.movie_id = movie_info_idx.movie_id) And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id = info_type.id)
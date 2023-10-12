create materialized view if not exists mv193 as select company_name.country_code AS country_code, company_name.id AS company_name_id_1, company_name.name AS name, company_type.id AS company_type_id_3, company_type.kind AS kind, info_type.id AS info_type_id_5, info_type.info AS info_type_info_6, movie_companies.movie_id AS movie_id, movie_info.info AS movie_info_info_8, movie_info_idx.info AS movie_info_idx_info_9, movie_info_idx.info_type_id AS info_type_id
from company_name, company_type, info_type, movie_companies, movie_info, movie_info_idx
 where (company_name.id = movie_companies.company_id) And (company_type.kind = 'production companies') And (info_type.info = 'rating') And (info_type.info = 'release dates') And (movie_companies.company_type_id = company_type.id) And (movie_companies.movie_id = movie_info_idx.movie_id) And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = movie_companies.movie_id) And (movie_info_idx.info_type_id = info_type.id)
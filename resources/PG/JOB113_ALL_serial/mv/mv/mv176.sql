create materialized view if not exists mv176 as select company_name.country_code AS country_code, company_name.id AS company_name_id_1, company_name.name AS name, company_type.kind AS company_type_kind_3, info_type.id AS info_type_id_4, info_type.info AS info_type_info_5, kind_type.id AS kind_type_id_6, kind_type.kind AS kind_type_kind_7, movie_info.movie_id AS movie_id, movie_info_idx.info AS movie_info_idx_info_9, title.title AS title
from company_name, company_type, info_type, kind_type, movie_companies, movie_info, movie_info_idx, title
 where (company_name.id = movie_companies.company_id) And (company_type.id = movie_companies.company_type_id) And (info_type.id = movie_info.info_type_id) And (info_type.info = 'rating') And (kind_type.id = title.kind_id) And (movie_companies.company_type_id = company_type.id) And (movie_companies.movie_id = title.id) And (movie_info.movie_id = title.id) And (movie_info_idx.info_type_id = info_type.id) And (title.id = movie_companies.movie_id) And (title.id = movie_info.movie_id) And (title.id = movie_info_idx.movie_id)
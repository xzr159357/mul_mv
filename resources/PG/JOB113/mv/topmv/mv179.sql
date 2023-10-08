create materialized view if not exists mv179 as select company_name.country_code AS country_code, company_name.id AS company_name_id_1, company_name.name AS name, company_type.id AS company_type_id_3, company_type.kind AS kind, info_type.id AS info_type_id_5, info_type.info AS info_type_info_6, movie_companies.movie_id AS movie_id, movie_info.info_type_id AS info_type_id, movie_info_idx.info AS movie_info_idx_info_9, title.kind_id AS kind_id, title.title AS title
 from company_type,movie_info_idx,title,movie_companies,info_type,movie_info,company_name
 where (movie_companies.company_type_id = company_type.id) And (company_type.kind = 'production companies') And (movie_companies.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (title.id = movie_companies.movie_id) And (movie_info.movie_id = title.id) And (company_name.id = movie_companies.company_id) And (movie_info.info_type_id = info_type.id) And (info_type.info = 'rating') And (info_type.info = 'release dates')
create materialized view if not exists mv351 as select company_name.country_code AS country_code, company_name.id AS company_name_id_1, company_name.name AS name, company_type.id AS company_type_id_3, info_type.id AS info_type_id_4, info_type.info AS info_type_info_5, kind_type.id AS kind_type_id_6, kind_type.kind AS kind, movie_companies.movie_id AS movie_companies_movie_id_8, movie_companies.note AS note, movie_info.info AS movie_info_info_10, movie_info.info_type_id AS info_type_id, movie_info_idx.info AS movie_info_idx_info_12, movie_info_idx.movie_id AS movie_info_idx_movie_id_13, title.production_year AS production_year, title.title AS title
 from company_name,company_type,title,movie_info_idx,kind_type,movie_info,movie_companies,info_type
 where (company_name.id = movie_companies.company_id) And (company_type.id = movie_companies.company_type_id) And (title.id = movie_info_idx.movie_id) And (movie_info.movie_id = title.id) And (kind_type.id = title.kind_id) And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (movie_info_idx.info < '8.5') And (movie_companies.movie_id = movie_info.movie_id) And (movie_info.info_type_id = info_type.id) And (movie_info.info in ('Sweden', 'Norway', 'Germany', 'Denmark', 'Swedish', 'Danish', 'Norwegian', 'German', 'USA', 'American')) And (movie_companies.note not like '%(USA)%')  And  (movie_companies.note like '%(200%)%') And (info_type.info = 'countries') And (info_type.info = 'rating')
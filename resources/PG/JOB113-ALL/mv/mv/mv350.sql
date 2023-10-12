create materialized view if not exists mv350 as select company_name.country_code AS country_code, company_name.id AS company_name_id_1, company_name.name AS name, info_type.id AS info_type_id_3, info_type.info AS info_type_info_4, kind_type.id AS kind_type_id_5, kind_type.kind AS kind, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_id, movie_companies.note AS note, movie_info.info AS movie_info_info_10, movie_info_idx.info AS movie_info_idx_info_11, movie_info_idx.info_type_id AS info_type_id, title.id AS title_id_13, title.production_year AS production_year, title.title AS title
from company_name, info_type, kind_type, movie_companies, movie_info, movie_info_idx, title
 where (company_name.id = movie_companies.company_id) And (info_type.info = 'countries') And (info_type.info = 'rating') And (kind_type.id = title.kind_id) And (movie_companies.movie_id = movie_info.movie_id) And (movie_companies.note not like '%(USA)%')  And  (movie_companies.note like '%(200%)%') And (movie_info.info in ('Sweden', 'Norway', 'Germany', 'Denmark', 'Swedish', 'Danish', 'Norwegian', 'German', 'USA', 'American')) And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info.movie_id = title.id) And (movie_info_idx.info < '8.5') And (movie_info_idx.info_type_id = info_type.id) And (title.id = movie_info_idx.movie_id)
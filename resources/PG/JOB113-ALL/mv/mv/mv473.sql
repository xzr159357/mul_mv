create materialized view if not exists mv473 as select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS comp_cast_type_kind_1, company_name.country_code AS country_code, company_name.id AS company_name_id_3, company_name.name AS name, company_type.id AS company_type_id_5, complete_cast.movie_id AS complete_cast_movie_id_6, complete_cast.subject_id AS subject_id, info_type.id AS info_type_id_8, info_type.info AS info_type_info_9, keyword.id AS keyword_id_10, keyword.keyword AS keyword, kind_type.id AS kind_type_id_12, kind_type.kind AS kind_type_kind_13, movie_companies.note AS note, movie_info.info AS movie_info_info_15, movie_info.movie_id AS movie_info_movie_id_16, movie_info_idx.info AS movie_info_idx_info_17, movie_info_idx.info_type_id AS info_type_id, title.production_year AS production_year, title.title AS title
from comp_cast_type, company_name, company_type, complete_cast, info_type, keyword, kind_type, movie_companies, movie_info, movie_info_idx, movie_keyword, title
 where (comp_cast_type.id = complete_cast.status_id) And (comp_cast_type.id = complete_cast.subject_id) And (company_name.id = movie_companies.company_id) And (company_type.id = movie_companies.company_type_id) And (info_type.info = 'countries') And (info_type.info = 'rating') And (keyword.id = movie_keyword.keyword_id) And (kind_type.id = title.kind_id) And (movie_companies.movie_id = title.id) And (movie_companies.note not like '%(USA)%')  And  (movie_companies.note like '%(200%)%') And (movie_info.info in ('Sweden', 'Norway', 'Germany', 'Denmark', 'Swedish', 'Danish', 'Norwegian', 'German', 'USA', 'American')) And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info.movie_id = title.id) And (movie_info_idx.info < '8.5') And (movie_info_idx.info_type_id = info_type.id) And (movie_keyword.movie_id = title.id) And (title.id = complete_cast.movie_id) And (title.id = movie_info_idx.movie_id)
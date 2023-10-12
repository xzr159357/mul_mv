create materialized view if not exists mv497 as select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS comp_cast_type_kind_1, company_name.country_code AS country_code, company_name.id AS company_name_id_3, company_name.name AS name, company_type.id AS company_type_id_5, complete_cast.movie_id AS complete_cast_movie_id_6, complete_cast.subject_id AS subject_id, info_type.id AS info_type_id_8, info_type.info AS info_type_info_9, kind_type.id AS kind_type_id_10, kind_type.kind AS kind_type_kind_11, movie_companies.note AS note, movie_info.info AS movie_info_info_13, movie_info_idx.info AS movie_info_idx_info_14, movie_info_idx.info_type_id AS info_type_id, movie_info_idx.movie_id AS movie_info_idx_movie_id_16, title.production_year AS production_year, title.title AS title
from comp_cast_type, company_name, company_type, complete_cast, info_type, kind_type, movie_companies, movie_info, movie_info_idx, title
 where (comp_cast_type.kind = 'cast') And (comp_cast_type.kind = 'complete') And (company_name.id = movie_companies.company_id) And (company_type.id = movie_companies.company_type_id) And (complete_cast.status_id = comp_cast_type.id) And (complete_cast.subject_id = comp_cast_type.id) And (info_type.id = movie_info.info_type_id) And (info_type.id = movie_info_idx.info_type_id) And (kind_type.id = title.kind_id) And (movie_companies.movie_id = movie_info.movie_id) And (movie_companies.note not like '%(USA)%')  And  (movie_companies.note like '%(200%)%') And (movie_info.info in ('Sweden', 'Norway', 'Germany', 'Denmark', 'Swedish', 'Danish', 'Norwegian', 'German', 'USA', 'American')) And (movie_info.movie_id = complete_cast.movie_id) And (movie_info_idx.info < '8.5') And (movie_info_idx.movie_id = title.id) And (title.id = movie_info.movie_id)
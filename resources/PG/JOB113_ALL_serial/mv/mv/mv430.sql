create materialized view if not exists mv430 as select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS comp_cast_type_kind_1, complete_cast.movie_id AS complete_cast_movie_id_2, info_type.id AS info_type_id_3, info_type.info AS info_type_info_4, keyword.id AS keyword_id_5, keyword.keyword AS keyword, kind_type.id AS kind_type_id_7, kind_type.kind AS kind_type_kind_8, movie_companies.company_id AS company_id, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_companies_movie_id_11, movie_companies.note AS note, movie_info.info AS movie_info_info_13, movie_info.info_type_id AS info_type_id, movie_info_idx.info AS movie_info_idx_info_15, title.production_year AS production_year, title.title AS title
from comp_cast_type, complete_cast, info_type, keyword, kind_type, movie_companies, movie_info, movie_info_idx, movie_keyword, title
 where (comp_cast_type.id = complete_cast.status_id) And (comp_cast_type.kind = 'crew') And (complete_cast.subject_id = comp_cast_type.id) And (info_type.id = movie_info_idx.info_type_id) And (info_type.info = 'rating') And (keyword.id = movie_keyword.keyword_id) And (kind_type.id = title.kind_id) And (movie_companies.movie_id = title.id) And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info.movie_id = title.id) And (movie_info_idx.movie_id = complete_cast.movie_id) And (movie_keyword.movie_id = title.id) And (title.id = movie_info_idx.movie_id)
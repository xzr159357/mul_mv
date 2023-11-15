create materialized view if not exists mv322 as select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS comp_cast_type_kind_1, company_name.country_code AS country_code, company_name.id AS company_name_id_3, complete_cast.movie_id AS movie_id, kind_type.id AS kind_type_id_5, kind_type.kind AS kind_type_kind_6, movie_companies.company_type_id AS company_type_id, movie_info.info AS info, movie_info.info_type_id AS info_type_id, movie_info.note AS note, movie_keyword.keyword_id AS keyword_id, title.production_year AS production_year, title.title AS title
from comp_cast_type, company_name, complete_cast, kind_type, movie_companies, movie_info, movie_keyword, title
 where (comp_cast_type.kind = 'complete+verified') And (company_name.id = movie_companies.company_id) And (complete_cast.status_id = comp_cast_type.id) And (kind_type.kind = 'movie') And (movie_companies.movie_id = movie_keyword.movie_id) And (movie_info.movie_id = title.id) And (movie_keyword.movie_id = title.id) And (title.id = complete_cast.movie_id) And (title.id = movie_companies.movie_id) And (title.kind_id = kind_type.id)
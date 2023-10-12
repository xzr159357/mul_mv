create materialized view if not exists mv524 as select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS kind, company_name.country_code AS country_code, company_name.id AS company_name_id_3, complete_cast.movie_id AS movie_id, complete_cast.status_id AS status_id, info_type.id AS info_type_id_6, info_type.info AS info_type_info_7, movie_info.info AS movie_info_info_8, movie_keyword.keyword_id AS keyword_id, title.production_year AS production_year, title.title AS title
from comp_cast_type, company_name, complete_cast, info_type, movie_companies, movie_info, movie_keyword, title
 where (comp_cast_type.kind = 'cast') And (company_name.id = movie_companies.company_id) And (complete_cast.subject_id = comp_cast_type.id) And (info_type.info = 'release dates') And (movie_companies.movie_id = title.id) And (movie_info.info IS NOT NULL)  And  (((movie_info.info = '__LIKE__Japan:%200%')) Or ((movie_info.info = '__LIKE__USA:%200%'))) And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = title.id) And (movie_keyword.movie_id = title.id) And (title.id = complete_cast.movie_id)
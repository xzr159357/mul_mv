select company_name.country_code AS country_code, company_name.id AS company_name_id_1, company_name.name AS name, info_type.id AS info_type_id_3, info_type.info AS info_type_info_4, keyword.id AS keyword_id_5, keyword.keyword AS keyword, kind_type.id AS kind_type_id_7, kind_type.kind AS kind, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_id, movie_info.info AS movie_info_info_11, title.production_year AS production_year, title.title AS title
from company_name, info_type, keyword, kind_type, movie_companies, movie_info, movie_keyword, title
 where (company_name.id = movie_companies.company_id) And (info_type.info = 'countries') And (keyword.keyword in ('murder', 'murder-in-title', 'blood', 'violence')) And (kind_type.kind in ('movie', 'episode')) And (movie_companies.movie_id = movie_keyword.movie_id) And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id) And (title.id = movie_companies.movie_id) And (title.id = movie_info.movie_id) And (title.id = movie_keyword.movie_id) And (title.kind_id = kind_type.id)
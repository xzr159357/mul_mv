select aka_title.movie_id AS movie_id, company_name.country_code AS country_code, company_name.id AS company_name_id_2, company_name.name AS name, company_type.id AS company_type_id_4, info_type.id AS info_type_id_5, info_type.info AS info_type_info_6, keyword.id AS keyword_id_7, movie_companies.note AS movie_companies_note_8, movie_info.info AS movie_info_info_9, movie_info.note AS movie_info_note_10, title.production_year AS production_year, title.title AS title
from aka_title, company_name, company_type, info_type, keyword, movie_companies, movie_info, movie_keyword, title
 where (aka_title.movie_id = movie_companies.movie_id) And (company_name.country_code = '[us]')  And  (company_name.name = 'YouTube') And (info_type.info = 'release dates') And (keyword.id = movie_keyword.keyword_id) And (movie_companies.company_id = company_name.id) And (movie_companies.company_type_id = company_type.id) And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = title.id) And (movie_keyword.movie_id = title.id) And (title.id = aka_title.movie_id)
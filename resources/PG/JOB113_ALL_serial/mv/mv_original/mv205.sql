select aka_title.movie_id AS movie_id, company_name.country_code AS country_code, company_name.id AS company_name_id_2, company_type.id AS company_type_id_3, info_type.id AS info_type_id_4, info_type.info AS info_type_info_5, movie_companies.note AS movie_companies_note_6, movie_info.info AS movie_info_info_7, movie_info.note AS movie_info_note_8, movie_keyword.keyword_id AS keyword_id, title.production_year AS production_year, title.title AS title
from aka_title, company_name, company_type, info_type, movie_companies, movie_info, movie_keyword, title
 where (aka_title.movie_id = movie_companies.movie_id) And (company_name.country_code = '[us]') And (company_type.id = movie_companies.company_type_id) And (info_type.id = movie_info.info_type_id) And (movie_companies.company_id = company_name.id) And (movie_companies.note like '%(200%)%')  And  (movie_companies.note like '%(worldwide)%') And (movie_info.movie_id = title.id) And (movie_keyword.movie_id = title.id) And (title.id = aka_title.movie_id)
select aka_title.movie_id AS movie_id, company_name.country_code AS country_code, company_name.id AS company_name_id_2, company_type.id AS company_type_id_3, info_type.id AS info_type_id_4, info_type.info AS info_type_info_5, keyword.id AS keyword_id_6, movie_info.info AS movie_info_info_7, movie_info.note AS note, title.production_year AS production_year, title.title AS title
from aka_title, company_name, company_type, info_type, keyword, movie_companies, movie_info, movie_keyword, title
 where (aka_title.movie_id = title.id) And (company_name.id = movie_companies.company_id) And (company_type.id = movie_companies.company_type_id) And (info_type.info = 'release dates') And (keyword.id = movie_keyword.keyword_id) And (movie_companies.movie_id = title.id) And (movie_info.info IS NOT NULL)  And  (movie_info.note like '%internet%')  And  (((movie_info.info like 'USA:% 199%')) Or ((movie_info.info like 'USA:% 200%'))) And (movie_info.info_type_id = info_type.id) And (movie_keyword.movie_id = title.id) And (title.id = movie_info.movie_id)
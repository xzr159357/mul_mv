select company_name.country_code AS country_code, company_name.id AS company_name_id_1, company_type.id AS company_type_id_2, info_type.id AS info_type_id_3, info_type.info AS info_type_info_4, movie_companies.movie_id AS movie_id, movie_info.info AS movie_info_info_6, movie_info.note AS note, movie_keyword.keyword_id AS keyword_id, title.production_year AS production_year, title.title AS title
from company_name, company_type, info_type, movie_companies, movie_info, movie_keyword, title
 where (company_name.id = movie_companies.company_id) And (company_type.id = movie_companies.company_type_id) And (info_type.info = 'release dates') And (movie_companies.movie_id = title.id) And (movie_info.info IS NOT NULL)  And  (movie_info.note like '%internet%')  And  (((movie_info.info like 'USA:% 199%')) Or ((movie_info.info like 'USA:% 200%'))) And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = title.id) And (movie_keyword.movie_id = title.id) And (title.id = movie_info.movie_id) And (title.id = movie_keyword.movie_id)
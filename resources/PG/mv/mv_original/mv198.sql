select aka_title.movie_id AS movie_id, company_name.country_code AS country_code, company_name.id AS company_name_id_2, info_type.id AS info_type_id_3, info_type.info AS info_type_info_4, movie_companies.company_type_id AS company_type_id, movie_companies.note AS movie_companies_note_6, movie_info.info AS movie_info_info_7, movie_info.note AS movie_info_note_8, movie_keyword.keyword_id AS keyword_id, title.production_year AS production_year, title.title AS title
 from movie_companies,movie_keyword,info_type,title,aka_title,movie_info,company_name
 where (title.id = movie_companies.movie_id) And (movie_companies.note like '%(200%)%')  And  (movie_companies.note like '%(worldwide)%') And (company_name.id = movie_companies.company_id) And (movie_keyword.movie_id = title.id) And (movie_info.info_type_id = info_type.id) And (info_type.info = 'release dates') And (title.id = movie_info.movie_id) And (aka_title.movie_id = title.id) And (movie_info.note like '%internet%')  And  (movie_info.info like 'USA:% 200%')
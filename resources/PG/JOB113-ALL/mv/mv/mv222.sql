create materialized view if not exists mv222 as select company_name.country_code AS country_code, company_name.id AS company_name_id_1, company_type.id AS company_type_id_2, info_type.id AS info_type_id_3, info_type.info AS info_type_info_4, keyword.id AS keyword_id_5, movie_companies.movie_id AS movie_id, movie_companies.note AS movie_companies_note_7, movie_info.info AS movie_info_info_8, movie_info.note AS movie_info_note_9, title.production_year AS production_year, title.title AS title
 from company_name,movie_keyword,company_type,keyword,title,aka_title,movie_info,movie_companies,info_type
 where (company_name.id = movie_companies.company_id) And (movie_keyword.movie_id = title.id) And (keyword.id = movie_keyword.keyword_id) And (company_type.id = movie_companies.company_type_id) And (title.id = aka_title.movie_id) And (aka_title.movie_id = title.id) And (title.id = movie_info.movie_id) And (movie_info.info_type_id = info_type.id) And (movie_info.note like '%internet%')  And  (movie_info.info like 'USA:% 200%') And (movie_companies.movie_id = movie_info.movie_id) And (movie_companies.note like '%(200%)%')  And  (movie_companies.note like '%(worldwide)%') And (info_type.info = 'release dates')
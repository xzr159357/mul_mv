create materialized view if not exists mv224 as select aka_title.movie_id AS aka_title_movie_id_0, aka_title.title AS aka_title_title_1, company_name.country_code AS country_code, company_name.id AS company_name_id_3, company_type.id AS company_type_id_4, info_type.id AS info_type_id_5, info_type.info AS info, keyword.id AS keyword_id_7, movie_info.movie_id AS movie_info_movie_id_8, movie_info.note AS note, title.production_year AS production_year, title.title AS title_title_11
 from company_type,company_name,keyword,title,movie_companies,info_type,movie_info,aka_title,movie_keyword
 where (company_type.id = movie_companies.company_type_id) And (company_name.id = movie_companies.company_id) And (keyword.id = movie_keyword.keyword_id) And (title.id = movie_companies.movie_id) And (aka_title.movie_id = title.id) And (movie_keyword.movie_id = title.id) And (movie_companies.movie_id = title.id) And (info_type.id = movie_info.info_type_id) And (info_type.info = 'release dates') And (movie_info.note like '%internet%') And (title.id = movie_info.movie_id)
select company_name.country_code AS country_code, company_name.id AS company_name_id_1, company_type.id AS company_type_id_2, info_type.id AS info_type_id_3, info_type.info AS info, movie_companies.movie_id AS movie_id, movie_info.note AS note, movie_keyword.keyword_id AS keyword_id, title.production_year AS production_year, title.title AS title
 from company_name,movie_keyword,company_type,title,movie_info,movie_companies,info_type
 where (company_name.id = movie_companies.company_id) And (movie_keyword.movie_id = title.id) And (company_type.id = movie_companies.company_type_id) And (title.id = movie_keyword.movie_id) And (movie_info.movie_id = title.id) And (movie_info.info_type_id = info_type.id) And (movie_info.note like '%internet%') And (title.id = movie_info.movie_id) And (movie_companies.movie_id = title.id) And (info_type.info = 'release dates')
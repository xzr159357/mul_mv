create materialized view if not exists mv279 as select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS kind, company_name.country_code AS country_code, company_name.id AS company_name_id_3, complete_cast.movie_id AS movie_id, info_type.id AS info_type_id_5, info_type.info AS info_type_info_6, keyword.id AS keyword_id_7, keyword.keyword AS keyword, movie_companies.company_type_id AS company_type_id, movie_info.info AS movie_info_info_10, movie_info.note AS note
 from keyword,comp_cast_type,movie_companies,info_type,complete_cast,movie_info,company_name,movie_keyword
 where (movie_keyword.keyword_id = keyword.id) And (keyword.keyword in ('nerd', 'loner', 'alienation', 'dignity')) And (complete_cast.status_id = comp_cast_type.id) And (comp_cast_type.kind = 'complete+verified') And (movie_companies.movie_id = complete_cast.movie_id) And (movie_info.movie_id = movie_companies.movie_id) And (company_name.id = movie_companies.company_id) And (info_type.id = movie_info.info_type_id) And (info_type.info = 'release dates') And (movie_keyword.movie_id = movie_info.movie_id) And (movie_info.note like '%internet%')  And  (movie_info.info like 'USA:% 200%')
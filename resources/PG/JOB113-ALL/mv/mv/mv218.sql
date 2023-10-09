create materialized view if not exists mv218 as select company_name.country_code AS country_code, company_name.id AS company_name_id_1, company_type.id AS company_type_id_2, info_type.id AS info_type_id_3, info_type.info AS info_type_info_4, movie_companies.movie_id AS movie_id, movie_companies.note AS movie_companies_note_6, movie_info.info AS movie_info_info_7, movie_info.note AS movie_info_note_8
 from company_name,company_type,movie_info,movie_companies,info_type
 where (company_name.id = movie_companies.company_id) And (company_type.id = movie_companies.company_type_id) And (movie_companies.movie_id = movie_info.movie_id) And (movie_info.info_type_id = info_type.id) And (movie_info.note like '%internet%')  And  (movie_info.info like 'USA:% 200%') And (movie_companies.note like '%(200%)%')  And  (movie_companies.note like '%(worldwide)%') And (info_type.info = 'release dates')
create materialized view if not exists mv223 as select aka_title.movie_id AS movie_id, info_type.id AS id, info_type.info AS info_type_info_2, movie_companies.company_id AS company_id, movie_companies.company_type_id AS company_type_id, movie_companies.note AS movie_companies_note_5, movie_info.info AS movie_info_info_6, movie_info.note AS movie_info_note_7
 from movie_companies,aka_title,info_type,movie_info
 where (movie_companies.movie_id = movie_info.movie_id) And (movie_companies.note like '%(200%)%')  And  (movie_companies.note like '%(worldwide)%') And (aka_title.movie_id = movie_info.movie_id) And (movie_info.info_type_id = info_type.id) And (info_type.info = 'release dates') And (movie_info.note like '%internet%')  And  (movie_info.info like 'USA:% 200%')
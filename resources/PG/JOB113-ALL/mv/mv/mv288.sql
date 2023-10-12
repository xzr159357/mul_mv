create materialized view if not exists mv288 as select cast_info.movie_id AS movie_id, cast_info.note AS cast_info_note_1, cast_info.person_id AS person_id, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, info_type.id AS id, info_type.info AS info_type_info_6, movie_companies.company_id AS company_id, movie_companies.note AS movie_companies_note_8, movie_info.info AS movie_info_info_9, role_type.role AS role
from cast_info, info_type, movie_companies, movie_info, role_type
 where (cast_info.movie_id = movie_info.movie_id) And (cast_info.note = '(voice)') And (cast_info.role_id = role_type.id) And (info_type.info = 'release dates') And (movie_companies.movie_id = movie_info.movie_id) And (movie_companies.note like '%(200%)%')  And  (((movie_companies.note like '%(USA)%')) Or ((movie_companies.note like '%(worldwide)%'))) And (movie_info.info IS NOT NULL)  And  (((movie_info.info = '__LIKE__Japan:%2007%')) Or ((movie_info.info = '__LIKE__USA:%2008%'))) And (movie_info.info_type_id = info_type.id) And (role_type.role = 'actress')
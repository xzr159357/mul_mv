create materialized view if not exists mv285 as select cast_info.note AS cast_info_note_0, cast_info.role_id AS role_id, char_name.id AS char_name_id_2, company_name.country_code AS country_code, company_name.id AS company_name_id_4, info_type.id AS info_type_id_5, info_type.info AS info_type_info_6, movie_companies.movie_id AS movie_id, movie_companies.note AS movie_companies_note_8, movie_info.info AS movie_info_info_9, name.gender AS gender, name.name AS name, role_type.role AS role, title.production_year AS production_year, title.title AS title
 from company_name,name,role_type,cast_info,aka_name,title,movie_info,movie_companies,char_name,info_type
 where (company_name.id = movie_companies.company_id) And (name.id = aka_name.person_id) And (cast_info.person_id = name.id) And (cast_info.role_id = role_type.id) And (role_type.role = 'actress') And (name.id = cast_info.person_id) And (cast_info.movie_id = movie_info.movie_id) And (cast_info.note in ('(voice)', '(voice: Japanese version)', '(voice) (uncredited)', '(voice: English version)')) And (char_name.id = cast_info.person_role_id) And (aka_name.person_id = name.id) And (title.id = cast_info.movie_id) And (movie_info.movie_id = title.id) And (movie_companies.movie_id = movie_info.movie_id) And (movie_info.info_type_id = info_type.id) And (movie_info.info IS NOT NULL)  And  (((movie_info.info = '__LIKE__Japan:%200%')) Or ((movie_info.info = '__LIKE__USA:%200%'))) And (movie_companies.note IS NOT NULL)  And  (((movie_companies.note like '%(USA)%')) Or ((movie_companies.note like '%(worldwide)%'))) And (info_type.info = 'release dates')
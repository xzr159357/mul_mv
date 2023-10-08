create materialized view if not exists mv251 as select aka_name.person_id AS person_id, cast_info.movie_id AS cast_info_movie_id_1, cast_info.note AS cast_info_note_2, cast_info.role_id AS role_id, char_name.id AS id, info_type.info AS info_type_info_5, movie_companies.company_id AS company_id, movie_companies.note AS movie_companies_note_7, movie_info.info AS movie_info_info_8, movie_info.info_type_id AS info_type_id, movie_info.movie_id AS movie_info_movie_id_10, name.gender AS gender, name.name AS name, role_type.role AS role, title.production_year AS production_year, title.title AS title
 from movie_companies,info_type,title,movie_info,name,role_type,char_name,aka_name,cast_info
 where (title.id = movie_companies.movie_id) And (movie_companies.note like '%(200%)%')  And  (((movie_companies.note like '%(USA)%')) Or ((movie_companies.note like '%(worldwide)%'))) And (info_type.id = movie_info.info_type_id) And (info_type.info = 'release dates') And (title.id = cast_info.movie_id) And (title.id = movie_info.movie_id) And (movie_info.info IS NOT NULL)  And  (((movie_info.info = '__LIKE__Japan:%2007%')) Or ((movie_info.info = '__LIKE__USA:%2008%'))) And (name.id = cast_info.person_id) And (aka_name.person_id = name.id) And (cast_info.role_id = role_type.id) And (role_type.role = 'actress') And (char_name.id = cast_info.person_role_id) And (cast_info.note = '(voice)')
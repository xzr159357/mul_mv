create materialized view if not exists mv105 as select aka_name.name AS aka_name_name_0, aka_name.person_id AS person_id, cast_info.movie_id AS cast_info_movie_id_2, cast_info.note AS note, cast_info.role_id AS role_id, char_name.id AS char_name_id_5, char_name.name AS char_name_name_6, company_name.country_code AS country_code, company_name.id AS company_name_id_8, movie_companies.movie_id AS movie_companies_movie_id_9, name.gender AS gender, name.name AS name_name_11, role_type.role AS role, title.title AS title
 from company_name,role_type,title,char_name,movie_companies,cast_info,aka_name,name
 where (company_name.id = movie_companies.company_id) And (cast_info.role_id = role_type.id) And (role_type.role = 'actress') And (title.id = cast_info.movie_id) And (char_name.id = cast_info.person_role_id) And (movie_companies.movie_id = cast_info.movie_id) And (cast_info.note in ('(voice)', '(voice: Japanese version)', '(voice) (uncredited)', '(voice: English version)')) And (name.id = cast_info.person_id) And (aka_name.person_id = name.id)
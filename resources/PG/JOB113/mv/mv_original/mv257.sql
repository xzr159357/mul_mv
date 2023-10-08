select aka_name.person_id AS person_id, cast_info.movie_id AS cast_info_movie_id_1, cast_info.note AS note, cast_info.role_id AS role_id, char_name.id AS char_name_id_4, company_name.country_code AS country_code, company_name.id AS company_name_id_6, info_type.id AS info_type_id_7, info_type.info AS info, movie_info.movie_id AS movie_info_movie_id_9, name.gender AS gender, name.name AS name, role_type.role AS role, title.production_year AS production_year, title.title AS title
 from company_name,role_type,title,char_name,cast_info,movie_companies,info_type,movie_info,aka_name,name
 where (company_name.id = movie_companies.company_id) And (cast_info.role_id = role_type.id) And (role_type.role = 'actress') And (title.id = cast_info.movie_id) And (title.id = movie_companies.movie_id) And (title.id = movie_info.movie_id) And (char_name.id = cast_info.person_role_id) And (cast_info.note in ('(voice)', '(voice: Japanese version)', '(voice) (uncredited)', '(voice: English version)')) And (name.id = cast_info.person_id) And (movie_companies.movie_id = title.id) And (movie_info.info_type_id = info_type.id) And (info_type.info = 'release dates') And (movie_info.movie_id = title.id) And (aka_name.person_id = name.id)
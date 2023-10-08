select aka_name.person_id AS person_id, cast_info.movie_id AS cast_info_movie_id_1, cast_info.note AS note, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, char_name.name AS char_name_name_5, company_name.country_code AS country_code, company_name.id AS company_name_id_7, info_type.id AS info_type_id_8, info_type.info AS info_type_info_9, keyword.id AS keyword_id_10, keyword.keyword AS keyword, movie_info.info AS movie_info_info_12, movie_keyword.movie_id AS movie_keyword_movie_id_13, name.gender AS gender, name.name AS name_name_15, role_type.role AS role, title.production_year AS production_year, title.title AS title
 from company_name,keyword,role_type,title,char_name,cast_info,movie_companies,info_type,movie_info,aka_name,name,movie_keyword
 where (company_name.id = movie_companies.company_id) And (movie_keyword.keyword_id = keyword.id) And (keyword.keyword in ('hero', 'martial-arts', 'hand-to-hand-combat')) And (role_type.id = cast_info.role_id) And (title.id = movie_keyword.movie_id) And (cast_info.movie_id = title.id) And (movie_companies.movie_id = title.id) And (movie_info.movie_id = title.id) And (char_name.id = cast_info.person_role_id) And (cast_info.movie_id = movie_keyword.movie_id) And (name.id = cast_info.person_id) And (aka_name.person_id = cast_info.person_id) And (cast_info.note in ('(voice)', '(voice: Japanese version)', '(voice) (uncredited)', '(voice: English version)')) And (info_type.id = movie_info.info_type_id) And (movie_info.info IS NOT NULL)  And  (((movie_info.info = '__LIKE__Japan:%201%')) Or ((movie_info.info = '__LIKE__USA:%201%')))
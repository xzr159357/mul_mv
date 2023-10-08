select aka_name.person_id AS person_id, cast_info.movie_id AS cast_info_movie_id_1, cast_info.note AS note, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, char_name.name AS char_name_name_5, keyword.id AS id, keyword.keyword AS keyword, movie_info.info AS info, movie_info.info_type_id AS movie_info_info_type_id_9, movie_keyword.movie_id AS movie_keyword_movie_id_10, name.gender AS gender, name.name AS name_name_12, person_info.info_type_id AS person_info_info_type_id_13
 from person_info,keyword,movie_info,char_name,cast_info,aka_name,name,movie_keyword
 where (name.id = person_info.person_id) And (person_info.person_id = cast_info.person_id) And (movie_keyword.keyword_id = keyword.id) And (keyword.keyword = 'computer-animation') And (cast_info.movie_id = movie_info.movie_id) And (movie_info.info = '__LIKE__USA:%200%') And (char_name.id = cast_info.person_role_id) And (aka_name.person_id = cast_info.person_id) And (cast_info.person_id = name.id) And (cast_info.movie_id = movie_keyword.movie_id) And (cast_info.note in ('(voice)', '(voice) (uncredited)', '(voice: English version)'))
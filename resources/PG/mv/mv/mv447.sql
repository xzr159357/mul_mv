create materialized view if not exists mv447 as select aka_name.person_id AS person_id, cast_info.movie_id AS cast_info_movie_id_1, cast_info.note AS note, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, char_name.name AS char_name_name_5, comp_cast_type.id AS comp_cast_type_id_6, comp_cast_type.kind AS kind, complete_cast.movie_id AS complete_cast_movie_id_8, complete_cast.subject_id AS subject_id, info_type.id AS info_type_id_10, info_type.info AS info_type_info_11, keyword.id AS keyword_id_12, keyword.keyword AS keyword, movie_info.info AS movie_info_info_14, name.gender AS gender, name.name AS name_name_16, role_type.role AS role, title.production_year AS production_year, title.title AS title
 from comp_cast_type,person_info,movie_keyword,info_type,title,movie_info,name,char_name,role_type,complete_cast,aka_name,cast_info,keyword
 where (comp_cast_type.id = complete_cast.status_id) And (person_info.info_type_id = info_type.id) And (name.id = person_info.person_id) And (person_info.person_id = cast_info.person_id) And (title.id = movie_keyword.movie_id) And (movie_info.movie_id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id) And (info_type.id = movie_info.info_type_id) And (info_type.info = 'trivia') And (title.id = complete_cast.movie_id) And (movie_info.movie_id = title.id) And (cast_info.movie_id = movie_info.movie_id) And (movie_info.info IS NOT NULL)  And  (((movie_info.info = '__LIKE__Japan:%200%')) Or ((movie_info.info = '__LIKE__USA:%200%'))) And (cast_info.person_id = name.id) And (char_name.id = cast_info.person_role_id) And (role_type.id = cast_info.role_id) And (aka_name.person_id = cast_info.person_id) And (cast_info.note in ('(voice)', '(voice: Japanese version)', '(voice) (uncredited)', '(voice: English version)')) And (keyword.keyword = 'computer-animation')
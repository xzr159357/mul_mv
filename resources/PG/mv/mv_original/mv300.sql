select aka_name.person_id AS person_id, cast_info.movie_id AS cast_info_movie_id_1, cast_info.note AS note, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, char_name.name AS name, info_type.id AS info_type_id_6, info_type.info AS info_type_info_7, keyword.id AS keyword_id_8, keyword.keyword AS keyword, movie_info.info AS movie_info_info_10, movie_info.movie_id AS movie_info_movie_id_11, title.production_year AS production_year, title.title AS title
 from movie_keyword,info_type,title,movie_info,char_name,aka_name,cast_info,keyword
 where (title.id = movie_keyword.movie_id) And (cast_info.movie_id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id) And (info_type.id = movie_info.info_type_id) And (cast_info.movie_id = title.id) And (movie_info.movie_id = title.id) And (movie_info.info IS NOT NULL)  And  (((movie_info.info = '__LIKE__Japan:%201%')) Or ((movie_info.info = '__LIKE__USA:%201%'))) And (char_name.id = cast_info.person_role_id) And (aka_name.person_id = cast_info.person_id) And (cast_info.note in ('(voice)', '(voice: Japanese version)', '(voice) (uncredited)', '(voice: English version)')) And (keyword.keyword in ('hero', 'martial-arts', 'hand-to-hand-combat', 'computer-animated-movie'))
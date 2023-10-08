select aka_name.person_id AS person_id, cast_info.movie_id AS cast_info_movie_id_1, cast_info.note AS note, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, char_name.name AS char_name_name_5, complete_cast.movie_id AS complete_cast_movie_id_6, complete_cast.status_id AS status_id, complete_cast.subject_id AS subject_id, keyword.id AS id, keyword.keyword AS keyword, movie_companies.company_id AS company_id, movie_info.info AS info, movie_info.info_type_id AS movie_info_info_type_id_13, name.gender AS gender, name.name AS name_name_15, person_info.info_type_id AS person_info_info_type_id_16, title.production_year AS production_year, title.title AS title
 from person_info,movie_companies,movie_keyword,title,movie_info,name,char_name,complete_cast,aka_name,cast_info,keyword
 where (name.id = person_info.person_id) And (person_info.person_id = cast_info.person_id) And (movie_companies.movie_id = title.id) And (title.id = movie_keyword.movie_id) And (cast_info.movie_id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id) And (title.id = complete_cast.movie_id) And (movie_info.movie_id = title.id) And (cast_info.movie_id = movie_info.movie_id) And (movie_info.info IS NOT NULL)  And  (((movie_info.info = '__LIKE__Japan:%200%')) Or ((movie_info.info = '__LIKE__USA:%200%'))) And (cast_info.person_id = name.id) And (char_name.id = cast_info.person_role_id) And (aka_name.person_id = cast_info.person_id) And (cast_info.note in ('(voice)', '(voice) (uncredited)', '(voice: English version)')) And (keyword.keyword = 'computer-animation')
select cast_info.movie_id AS cast_info_movie_id_0, cast_info.note AS note, cast_info.person_id AS person_id, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, char_name.name AS name, comp_cast_type.id AS id, comp_cast_type.kind AS kind, keyword.keyword AS keyword, movie_keyword.keyword_id AS keyword_id, movie_keyword.movie_id AS movie_keyword_movie_id_10, title.production_year AS production_year, title.title AS title
 from movie_keyword,complete_cast,cast_info,keyword,title,char_name,comp_cast_type
 where (movie_keyword.movie_id = title.id) And (keyword.id = movie_keyword.keyword_id) And (complete_cast.status_id = comp_cast_type.id) And (title.id = complete_cast.movie_id) And (comp_cast_type.id = complete_cast.subject_id) And (cast_info.movie_id = title.id) And (cast_info.note in ('(voice)', '(voice) (uncredited)', '(voice: English version)')) And (char_name.id = cast_info.person_role_id) And (comp_cast_type.kind = 'completeverified')
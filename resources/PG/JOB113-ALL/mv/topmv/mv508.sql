create materialized view if not exists mv508 as select aka_name.person_id AS person_id, cast_info.movie_id AS cast_info_movie_id_1, cast_info.note AS note, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, char_name.name AS char_name_name_5, comp_cast_type.id AS id, comp_cast_type.kind AS kind, keyword.keyword AS keyword, movie_keyword.keyword_id AS keyword_id, movie_keyword.movie_id AS movie_keyword_movie_id_10, name.gender AS gender, name.name AS name_name_12, role_type.role AS role, title.production_year AS production_year, title.title AS title
from aka_name, cast_info, char_name, comp_cast_type, complete_cast, keyword, movie_keyword, name, role_type, title
 where (aka_name.person_id = cast_info.person_id) And (cast_info.movie_id = title.id) And (cast_info.note in ('(voice)', '(voice) (uncredited)', '(voice: English version)')) And (cast_info.person_id = name.id) And (char_name.id = cast_info.person_role_id) And (comp_cast_type.id = complete_cast.subject_id) And (comp_cast_type.kind = 'completeverified') And (complete_cast.status_id = comp_cast_type.id) And (keyword.id = movie_keyword.keyword_id) And (movie_keyword.movie_id = title.id) And (name.id = aka_name.person_id) And (role_type.id = cast_info.role_id) And (title.id = complete_cast.movie_id)
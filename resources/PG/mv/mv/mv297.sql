create materialized view if not exists mv297 as select aka_name.person_id AS person_id, cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, char_name.name AS name, keyword.id AS id, keyword.keyword AS keyword
 from movie_keyword,char_name,aka_name,cast_info,keyword
 where (cast_info.movie_id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id) And (char_name.id = cast_info.person_role_id) And (aka_name.person_id = cast_info.person_id) And (cast_info.note in ('(voice)', '(voice: Japanese version)', '(voice) (uncredited)', '(voice: English version)')) And (keyword.keyword in ('hero', 'martial-arts', 'hand-to-hand-combat', 'computer-animated-movie'))
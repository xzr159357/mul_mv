create materialized view if not exists mv296 as select aka_name.person_id AS person_id, cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, keyword.id AS id, keyword.keyword AS keyword
 from cast_info,aka_name,keyword,movie_keyword
 where (aka_name.person_id = cast_info.person_id) And (cast_info.movie_id = movie_keyword.movie_id) And (cast_info.note in ('(voice)', '(voice: Japanese version)', '(voice) (uncredited)', '(voice: English version)')) And (movie_keyword.keyword_id = keyword.id) And (keyword.keyword in ('hero', 'martial-arts', 'hand-to-hand-combat', 'computer-animated-movie'))
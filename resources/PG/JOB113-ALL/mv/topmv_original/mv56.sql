select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, keyword.id AS id, keyword.keyword AS keyword, name.name AS name, title.production_year AS production_year, title.title AS title
from cast_info, keyword, movie_keyword, name, title
 where (cast_info.movie_id = movie_keyword.movie_id) And (cast_info.person_id = name.id) And (keyword.keyword = 'marvel-cinematic-universe') And (movie_keyword.keyword_id = keyword.id) And (movie_keyword.movie_id = title.id) And (name.name like '%Downey%Robert%') And (title.id = cast_info.movie_id)
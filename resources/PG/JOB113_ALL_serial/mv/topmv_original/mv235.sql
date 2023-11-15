select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, keyword.id AS id, keyword.keyword AS keyword, name.name AS name
from cast_info, keyword, movie_keyword, name
 where (cast_info.movie_id = movie_keyword.movie_id) And (keyword.keyword = 'character-name-in-title') And (movie_keyword.keyword_id = keyword.id) And (name.id = cast_info.person_id)
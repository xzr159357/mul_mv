select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, movie_keyword.keyword_id AS keyword_id, name.name AS name, title.production_year AS production_year, title.title AS title
from cast_info, movie_keyword, name, title
 where (cast_info.movie_id = title.id) And (movie_keyword.movie_id = title.id) And (name.id = cast_info.person_id) And (title.production_year > 2014)
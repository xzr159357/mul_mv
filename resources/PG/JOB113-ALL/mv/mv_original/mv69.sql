select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, keyword.id AS id, keyword.keyword AS keyword, name.name AS name, title.production_year AS production_year, title.title AS title
from cast_info, keyword, movie_keyword, name, title
 where (cast_info.movie_id = title.id) And (keyword.keyword in ('superhero', 'sequel', 'second-part', 'marvel-comics', 'based-on-comic', 'tv-special', 'fight', 'violence')) And (movie_keyword.keyword_id = keyword.id) And (movie_keyword.movie_id = title.id) And (name.id = cast_info.person_id) And (title.id = movie_keyword.movie_id)
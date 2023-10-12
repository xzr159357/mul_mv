create materialized view if not exists mv259 as select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, keyword.id AS id, keyword.keyword AS keyword
from cast_info, keyword, movie_keyword, title
 where (cast_info.movie_id = title.id) And (keyword.keyword = 'character-name-in-title') And (movie_keyword.keyword_id = keyword.id) And (title.id = movie_keyword.movie_id)
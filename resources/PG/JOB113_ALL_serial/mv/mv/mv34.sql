create materialized view if not exists mv34 as select keyword.id AS id, keyword.keyword AS keyword, movie_keyword.movie_id AS movie_id, title.production_year AS production_year, title.title AS title
from keyword, movie_keyword, title
 where (keyword.keyword = 'marvel-cinematic-universe') And (movie_keyword.keyword_id = keyword.id) And (title.id = movie_keyword.movie_id)
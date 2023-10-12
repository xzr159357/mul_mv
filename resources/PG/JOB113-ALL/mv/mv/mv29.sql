create materialized view if not exists mv29 as select keyword.id AS id, keyword.keyword AS keyword, movie_info.info AS info, movie_info.movie_id AS movie_id, title.production_year AS production_year, title.title AS title
from keyword, movie_info, movie_keyword, title
 where (keyword.keyword like '%sequel%') And (movie_info.info = 'Bulgaria') And (movie_info.movie_id = movie_keyword.movie_id) And (movie_info.movie_id = title.id) And (movie_keyword.keyword_id = keyword.id) And (title.id = movie_keyword.movie_id)
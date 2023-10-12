create materialized view if not exists mv28 as select keyword.id AS id, keyword.keyword AS keyword, movie_info.info AS info, movie_info.movie_id AS movie_id
from keyword, movie_info, movie_keyword
 where (keyword.keyword like '%sequel%') And (movie_info.info = 'Bulgaria') And (movie_info.movie_id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id)
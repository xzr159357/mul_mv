create materialized view if not exists mv178 as select keyword.id AS id, keyword.keyword AS keyword, movie_keyword.movie_id AS movie_id
from keyword, movie_keyword
 where (keyword.keyword in ('murder', 'murder-in-title', 'blood', 'violence')) And (movie_keyword.keyword_id = keyword.id)
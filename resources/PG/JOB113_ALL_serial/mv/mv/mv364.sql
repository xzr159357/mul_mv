create materialized view if not exists mv364 as select keyword.id AS id, keyword.keyword AS keyword, movie_keyword.movie_id AS movie_id, title.production_year AS production_year, title.title AS title
from keyword, movie_keyword, title
 where (keyword.keyword in ('murder', 'blood', 'gore', 'death', 'female-nudity')) And (movie_keyword.keyword_id = keyword.id) And (title.id = movie_keyword.movie_id)
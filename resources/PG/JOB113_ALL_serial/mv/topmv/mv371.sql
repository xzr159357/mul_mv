create materialized view if not exists mv371 as select keyword.id AS id, keyword.keyword AS keyword, movie_keyword.movie_id AS movie_id
from keyword, movie_keyword
 where (keyword.keyword in ('murder', 'violence', 'blood', 'gore', 'death', 'female-nudity', 'hospital')) And (movie_keyword.keyword_id = keyword.id)
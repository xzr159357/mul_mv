select keyword.id AS id, keyword.keyword AS keyword, movie_keyword.movie_id AS movie_id
from keyword, movie_keyword
 where (keyword.keyword = '10,000-mile-club') And (movie_keyword.keyword_id = keyword.id)
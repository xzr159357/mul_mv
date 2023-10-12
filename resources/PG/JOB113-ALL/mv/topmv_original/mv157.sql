select keyword.id AS id, keyword.keyword AS keyword, movie_keyword.movie_id AS movie_id
from keyword, movie_keyword
 where (keyword.keyword in ('sequel', 'revenge', 'based-on-novel')) And (movie_keyword.keyword_id = keyword.id)
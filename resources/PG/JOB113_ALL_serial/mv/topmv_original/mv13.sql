select keyword.id AS id, keyword.keyword AS keyword, movie_keyword.movie_id AS movie_id, title.episode_nr AS episode_nr, title.title AS title
from keyword, movie_keyword, title
 where (keyword.keyword = 'character-name-in-title') And (movie_keyword.keyword_id = keyword.id) And (title.id = movie_keyword.movie_id)
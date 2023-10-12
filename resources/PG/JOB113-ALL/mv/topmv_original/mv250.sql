select keyword.id AS id, keyword.keyword AS keyword, movie_companies.company_id AS company_id, movie_companies.movie_id AS movie_id
from keyword, movie_companies, movie_keyword, title
 where (keyword.keyword = 'character-name-in-title') And (movie_companies.movie_id = title.id) And (movie_keyword.keyword_id = keyword.id) And (title.id = movie_keyword.movie_id)
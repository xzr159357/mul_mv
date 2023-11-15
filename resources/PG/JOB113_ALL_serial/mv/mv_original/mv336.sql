select keyword.id AS id, keyword.keyword AS keyword, movie_companies.company_id AS company_id, movie_companies.movie_id AS movie_id, title.production_year AS production_year, title.title AS title
from keyword, movie_companies, movie_keyword, title
 where (keyword.keyword in ('hero', 'martial-arts', 'hand-to-hand-combat')) And (movie_companies.movie_id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id) And (title.id = movie_companies.movie_id) And (title.id = movie_keyword.movie_id)
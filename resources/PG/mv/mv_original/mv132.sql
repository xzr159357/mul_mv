select movie_keyword.keyword_id AS keyword_id, movie_keyword.movie_id AS movie_id, title.production_year AS production_year, title.title AS title
 from movie_keyword,title
 where (movie_keyword.movie_id = title.id) And (title.title like '%Money%')  And  (title.production_year = 1998)
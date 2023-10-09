select keyword.id AS id, keyword.keyword AS keyword, movie_keyword.movie_id AS movie_id, title.production_year AS production_year, title.title AS title
 from movie_keyword,keyword,title
 where (movie_keyword.keyword_id = keyword.id) And (title.id = movie_keyword.movie_id) And (keyword.keyword = 'marvel-cinematic-universe')
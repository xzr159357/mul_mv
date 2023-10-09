select keyword.id AS id, keyword.keyword AS keyword, movie_keyword.movie_id AS movie_id
 from movie_keyword,keyword,title
 where (movie_keyword.keyword_id = keyword.id) And (title.id = movie_keyword.movie_id) And (keyword.keyword = 'character-name-in-title')
select keyword.id AS id, keyword.keyword AS keyword, movie_keyword.movie_id AS movie_id
 from movie_keyword,keyword
 where (movie_keyword.keyword_id = keyword.id) And (keyword.keyword = 'computer-animation')
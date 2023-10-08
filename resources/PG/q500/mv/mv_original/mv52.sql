select movie_keyword.keyword_id AS keyword_id, movie_keyword.movie_id AS movie_id, title.production_year AS production_year
 from movie_keyword,title
 where (movie_keyword.movie_id = title.id) And (movie_keyword.keyword_id > 944) And ((title.production_year = 2001) Or (title.production_year = 1989))
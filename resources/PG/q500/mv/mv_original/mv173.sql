select cast_info.movie_id AS movie_id, movie_keyword.keyword_id AS keyword_id, title.production_year AS production_year
 from movie_keyword,title,cast_info
 where (movie_keyword.movie_id = title.id) And (movie_keyword.keyword_id > 944) And (cast_info.movie_id = title.id) And (title.production_year = 1989)
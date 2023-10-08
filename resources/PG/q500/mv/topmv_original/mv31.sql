select movie_keyword.movie_id AS movie_id, title.production_year AS production_year
 from movie_keyword,title
 where (movie_keyword.movie_id = title.id) And ((title.production_year = 1998) Or (title.production_year < 1946))
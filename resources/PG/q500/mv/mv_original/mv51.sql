select movie_keyword.movie_id AS movie_id
 from movie_keyword,title
 where (movie_keyword.movie_id = title.id)
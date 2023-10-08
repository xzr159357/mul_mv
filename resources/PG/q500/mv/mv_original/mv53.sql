select movie_info.movie_id AS movie_id, title.production_year AS production_year
 from title,movie_info
 where (movie_info.movie_id = title.id) And (title.production_year < 2012)
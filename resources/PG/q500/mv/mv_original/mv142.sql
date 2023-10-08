select movie_info_idx.movie_id AS movie_id, title.production_year AS production_year
 from movie_info_idx,title,movie_companies
 where (movie_info_idx.movie_id = title.id) And (title.id = movie_companies.movie_id) And (title.production_year > 2006) And (movie_companies.movie_id = title.id)
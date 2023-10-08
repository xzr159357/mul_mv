select title.kind_id AS kind_id, title.production_year AS production_year
 from title,movie_info_idx
 where (title.id = movie_info_idx.movie_id) And (((title.production_year < 2012)  And  (title.kind_id = 7)) Or ((title.kind_id < 7)  And  (title.production_year = 1998))) And (movie_info_idx.movie_id = title.id)
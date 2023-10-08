select movie_info_idx.movie_id AS movie_id, title.kind_id AS kind_id
 from title,movie_info_idx
 where (movie_info_idx.movie_id = title.id) And (title.kind_id < 4)
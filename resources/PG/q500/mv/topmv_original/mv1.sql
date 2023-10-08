select movie_info_idx.info_type_id AS info_type_id, movie_info_idx.movie_id AS movie_id, title.kind_id AS kind_id
 from title,movie_info_idx
 where (movie_info_idx.movie_id = title.id) And ((title.kind_id = 7) Or (title.kind_id = 1)) And (movie_info_idx.info_type_id > 99)
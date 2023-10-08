create materialized view if not exists mv27 as select movie_info_idx.info_type_id AS info_type_id, movie_info_idx.movie_id AS movie_id
 from title,movie_info_idx
 where (title.id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id < 101)
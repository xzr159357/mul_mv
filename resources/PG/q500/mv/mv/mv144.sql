create materialized view if not exists mv144 as select movie_info.movie_id AS movie_id, movie_info_idx.info_type_id AS info_type_id
 from title,movie_info,movie_info_idx
 where (movie_info.movie_id = title.id) And (movie_info_idx.movie_id = title.id) And (title.id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id < 101)
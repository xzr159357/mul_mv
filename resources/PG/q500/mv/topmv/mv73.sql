create materialized view if not exists mv73 as select 
 from title,movie_info_idx
 where (title.id = movie_info_idx.movie_id) And (movie_info_idx.movie_id = title.id)
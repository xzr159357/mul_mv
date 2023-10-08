create materialized view if not exists mv139 as select movie_info.movie_id AS movie_id
 from title,movie_info
 where (movie_info.movie_id = title.id)
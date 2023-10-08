create materialized view if not exists mv149 as select movie_info.movie_id AS movie_id, title.production_year AS production_year
 from title,movie_info,movie_info_idx
 where (movie_info.movie_id = title.id) And (movie_info_idx.movie_id = title.id) And (title.production_year < 2008)
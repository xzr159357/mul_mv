create materialized view if not exists mv124 as select movie_info_idx.movie_id AS movie_id, title.production_year AS production_year
 from title,movie_info_idx
 where (movie_info_idx.movie_id = title.id) And ((((title.production_year < 1966) Or (title.production_year > 1981))) Or (title.production_year = 1970))
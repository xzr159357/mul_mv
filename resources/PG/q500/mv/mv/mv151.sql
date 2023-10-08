create materialized view if not exists mv151 as select movie_info.info_type_id AS info_type_id, movie_info.movie_id AS movie_id, title.production_year AS production_year
 from title,movie_info,movie_info_idx
 where (movie_info.movie_id = title.id) And (movie_info_idx.movie_id = title.id) And (title.production_year > 1998) And (movie_info.info_type_id = 17)
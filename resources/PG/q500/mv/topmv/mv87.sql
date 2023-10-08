create materialized view if not exists mv87 as select movie_info.movie_id AS movie_id, title.kind_id AS kind_id, title.production_year AS production_year
 from title,movie_info
 where (movie_info.movie_id = title.id) And (title.kind_id < 7)  And  (title.production_year < 2005)
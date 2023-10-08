create materialized view if not exists mv132 as select cast_info.movie_id AS movie_id, title.kind_id AS kind_id
 from title,cast_info
 where (cast_info.movie_id = title.id) And (title.kind_id < 7)
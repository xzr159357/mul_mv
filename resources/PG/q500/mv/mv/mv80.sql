create materialized view if not exists mv80 as select movie_info.info_type_id AS info_type_id, movie_info.movie_id AS movie_id, title.kind_id AS kind_id
 from title,movie_info
 where (movie_info.movie_id = title.id) And (title.kind_id = 7) And (movie_info.info_type_id = 6)
create materialized view if not exists mv72 as select movie_info_idx.movie_id AS movie_id, title.kind_id AS kind_id
 from movie_keyword,title,movie_info_idx
 where (movie_keyword.movie_id = title.id) And (movie_info_idx.movie_id = title.id) And (title.kind_id < 4)
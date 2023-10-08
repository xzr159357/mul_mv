create materialized view if not exists mv63 as select movie_keyword.movie_id AS movie_id, title.kind_id AS kind_id
 from movie_keyword,title
 where (movie_keyword.movie_id = title.id) And (title.kind_id = 1)
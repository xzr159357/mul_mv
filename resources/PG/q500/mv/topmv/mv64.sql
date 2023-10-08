create materialized view if not exists mv64 as select movie_keyword.keyword_id AS keyword_id, movie_keyword.movie_id AS movie_id, title.kind_id AS kind_id
 from movie_keyword,title
 where (movie_keyword.movie_id = title.id) And (movie_keyword.keyword_id < 78213) And (title.kind_id < 7)
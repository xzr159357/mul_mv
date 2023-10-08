create materialized view if not exists mv46 as select movie_keyword.movie_id AS movie_id, title.kind_id AS kind_id, title.production_year AS production_year
 from movie_keyword,title
 where (movie_keyword.movie_id = title.id) And (((title.kind_id > 1)  And  (title.production_year < 2007)) Or ((title.production_year > 2009)  And  (title.kind_id = 7)))
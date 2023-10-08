create materialized view if not exists mv161 as select movie_companies.movie_id AS movie_id, title.kind_id AS kind_id, title.production_year AS production_year
 from title,movie_companies
 where (movie_companies.movie_id = title.id) And (((title.kind_id < 7)  And  (title.production_year = 2006)) Or ((title.kind_id = 7)  And  (title.production_year = 2004)))
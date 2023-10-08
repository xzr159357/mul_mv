create materialized view if not exists mv147 as select movie_companies.movie_id AS movie_id, title.kind_id AS kind_id, title.production_year AS production_year
 from movie_info_idx,title,movie_companies
 where (movie_info_idx.movie_id = title.id) And (movie_companies.movie_id = title.id) And (title.kind_id > 3)  And  (title.production_year > 2007)
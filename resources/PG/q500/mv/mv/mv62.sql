create materialized view if not exists mv62 as select title.production_year AS production_year
 from title,movie_companies
 where (title.id = movie_companies.movie_id) And (title.production_year < 2012) And (movie_companies.movie_id = title.id)
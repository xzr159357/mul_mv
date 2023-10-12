create materialized view if not exists mv164 as select movie_link.link_type_id AS link_type_id, movie_link.movie_id AS movie_id, title.production_year AS production_year, title.title AS title
from movie_link, title
 where (title.id = movie_link.movie_id) And (title.production_year > 1950)
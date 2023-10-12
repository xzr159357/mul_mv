create materialized view if not exists mv58 as select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, name.name AS name, title.production_year AS production_year, title.title AS title
from cast_info, name, title
 where (cast_info.movie_id = title.id) And (name.id = cast_info.person_id) And (title.production_year > 2014)
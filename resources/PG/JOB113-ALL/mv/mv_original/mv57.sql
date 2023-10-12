select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, title.production_year AS production_year, title.title AS title
from cast_info, title
 where (cast_info.movie_id = title.id) And (title.production_year > 2014)
select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, name.name AS name, title.production_year AS production_year, title.title AS title
from cast_info, name, title
 where (cast_info.person_id = name.id) And (name.name like '%Downey%Robert%') And (title.id = cast_info.movie_id)
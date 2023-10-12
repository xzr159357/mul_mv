select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, name.name AS name
from cast_info, name
 where (cast_info.person_id = name.id)
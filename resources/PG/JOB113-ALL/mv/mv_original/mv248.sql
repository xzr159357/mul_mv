select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, name.name AS name
 from name,cast_info
 where (cast_info.person_id = name.id) And (name.name = '__LIKE__Z%')
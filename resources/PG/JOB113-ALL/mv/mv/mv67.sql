create materialized view if not exists mv67 as select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, name.name AS name
 from name,cast_info
 where (cast_info.person_id = name.id)
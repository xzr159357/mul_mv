create materialized view if not exists mv47 as select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, movie_info_idx.info_type_id AS info_type_id
 from cast_info,movie_info_idx
 where (cast_info.movie_id = movie_info_idx.movie_id) And (cast_info.person_id = 2029088) And (movie_info_idx.info_type_id = 99)
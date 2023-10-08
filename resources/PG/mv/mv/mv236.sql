create materialized view if not exists mv236 as select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_id AS person_id, info_type.id AS id, info_type.info AS info_type_info_4, movie_info.info AS movie_info_info_5, movie_info_idx.info AS movie_info_idx_info_6, movie_info_idx.info_type_id AS info_type_id
 from info_type,movie_info_idx,movie_info,cast_info
 where (movie_info.info_type_id = info_type.id) And (movie_info_idx.info_type_id = info_type.id) And (info_type.info = 'budget') And (info_type.info = 'votes') And (movie_info.movie_id = movie_info_idx.movie_id) And (cast_info.movie_id = movie_info.movie_id) And (cast_info.note in ('(producer)', '(executive producer)'))
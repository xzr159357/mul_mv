create materialized view if not exists mv402 as select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_id AS person_id, info_type.id AS id, info_type.info AS info_type_info_4, movie_info.info AS movie_info_info_5, movie_info.info_type_id AS info_type_id, movie_info_idx.info AS movie_info_idx_info_7, title.production_year AS production_year, title.title AS title
 from cast_info,title,movie_info_idx,movie_info,info_type
 where (cast_info.movie_id = title.id) And (cast_info.note in ('(writer)', '(head writer)', '(written by)', '(story)', '(story editor)')) And (title.id = movie_info_idx.movie_id) And (movie_info.movie_id = title.id) And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (movie_info.info_type_id = info_type.id) And (movie_info.info = 'Horror') And (info_type.info = 'genres') And (info_type.info = 'votes')
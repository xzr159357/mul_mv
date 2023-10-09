create materialized view if not exists mv185 as select info_type.id AS id, info_type.info AS info_type_info_1, movie_info.info AS movie_info_info_2, movie_info.info_type_id AS info_type_id, movie_info.movie_id AS movie_id, movie_info_idx.info AS movie_info_idx_info_5
 from movie_info_idx,info_type,movie_info
 where (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (movie_info_idx.info > '7.0') And (movie_info.info_type_id = info_type.id) And (info_type.info = 'genres') And (info_type.info = 'rating') And (movie_info.info in ('Drama', 'Horror', 'Western', 'Family'))
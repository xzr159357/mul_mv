create materialized view if not exists mv204 as select info_type.id AS id, info_type.info AS info_type_info_1, movie_info.info AS movie_info_info_2, movie_info.movie_id AS movie_id, movie_info_idx.info AS movie_info_idx_info_4, movie_info_idx.info_type_id AS info_type_id
from info_type, movie_info, movie_info_idx
 where (info_type.info = 'countries') And (info_type.info = 'rating') And (movie_info.info in ('Sweden', 'Norway', 'Germany', 'Denmark', 'Swedish', 'Denish', 'Norwegian', 'German', 'USA', 'American')) And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info > '6.0') And (movie_info_idx.info_type_id = info_type.id)
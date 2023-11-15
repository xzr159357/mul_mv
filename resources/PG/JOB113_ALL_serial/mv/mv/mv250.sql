create materialized view if not exists mv250 as select info_type.id AS id, info_type.info AS info_type_info_1, movie_info.info AS movie_info_info_2, movie_info.movie_id AS movie_id, movie_info.note AS note, movie_info_idx.info AS movie_info_idx_info_5, movie_info_idx.info_type_id AS info_type_id, title.production_year AS production_year, title.title AS title
from info_type, movie_info, movie_info_idx, title
 where (info_type.info = 'genres') And (info_type.info = 'rating') And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = title.id) And (movie_info_idx.info > '8.0') And (movie_info_idx.info_type_id = info_type.id) And (title.id = movie_info_idx.movie_id)
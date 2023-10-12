select info_type.id AS info_type_id_0, info_type.info AS info_type_info_1, kind_type.id AS kind_type_id_2, kind_type.kind AS kind, movie_info.info AS movie_info_info_4, movie_info.movie_id AS movie_id, movie_info_idx.info AS movie_info_idx_info_6, movie_info_idx.info_type_id AS info_type_id, title.production_year AS production_year, title.title AS title
from info_type, kind_type, movie_info, movie_info_idx, title
 where (info_type.info = 'countries') And (info_type.info = 'rating') And (kind_type.id = title.kind_id) And (movie_info.info in ('Sweden', 'Norway', 'Germany', 'Denmark', 'Swedish', 'Denish', 'Norwegian', 'German', 'USA', 'American')) And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info.movie_id = title.id) And (movie_info_idx.info < '8.5') And (movie_info_idx.info_type_id = info_type.id) And (title.id = movie_info_idx.movie_id)
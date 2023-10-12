create materialized view if not exists mv208 as select info_type.id AS info_type_id_0, info_type.info AS info_type_info_1, keyword.id AS keyword_id_2, keyword.keyword AS keyword, kind_type.id AS kind_type_id_4, kind_type.kind AS kind, movie_info.info AS movie_info_info_6, movie_info.movie_id AS movie_id, movie_info_idx.info AS movie_info_idx_info_8, movie_info_idx.info_type_id AS info_type_id, title.production_year AS production_year, title.title AS title
from info_type, keyword, kind_type, movie_info, movie_info_idx, movie_keyword, title
 where (info_type.info = 'countries') And (info_type.info = 'rating') And (keyword.id = movie_keyword.keyword_id) And (kind_type.id = title.kind_id) And (movie_info.info in ('Sweden', 'Norway', 'Germany', 'Denmark', 'Swedish', 'Denish', 'Norwegian', 'German', 'USA', 'American')) And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info.movie_id = title.id) And (movie_info_idx.info > '6.0') And (movie_info_idx.info_type_id = info_type.id) And (movie_keyword.movie_id = title.id) And (title.id = movie_info.movie_id)
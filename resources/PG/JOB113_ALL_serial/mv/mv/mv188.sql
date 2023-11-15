create materialized view if not exists mv188 as select info_type.id AS info_type_id_0, info_type.info AS info_type_info_1, keyword.id AS keyword_id_2, keyword.keyword AS keyword, movie_info.info AS movie_info_info_4, movie_info.movie_id AS movie_id, title.kind_id AS kind_id, title.production_year AS production_year, title.title AS title
from info_type, keyword, movie_info, movie_keyword, title
 where (info_type.info = 'countries') And (keyword.keyword in ('murder', 'murder-in-title')) And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id) And (title.id = movie_info.movie_id) And (title.id = movie_keyword.movie_id)
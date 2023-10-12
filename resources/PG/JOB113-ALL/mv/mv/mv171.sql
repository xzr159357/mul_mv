create materialized view if not exists mv171 as select info_type.id AS id, info_type.info AS info_type_info_1, movie_info.info AS movie_info_info_2, movie_info.movie_id AS movie_id
from info_type, movie_info
 where (info_type.info = 'genres') And (movie_info.info in ('Drama', 'Horror')) And (movie_info.info_type_id = info_type.id)
create materialized view if not exists mv5 as select info_type.id AS id, info_type.info AS info, movie_info_idx.movie_id AS movie_id
from info_type, movie_info_idx
 where (info_type.info = 'bottom 10 rank') And (movie_info_idx.info_type_id = info_type.id)
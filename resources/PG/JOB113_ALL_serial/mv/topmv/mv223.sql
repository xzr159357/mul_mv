create materialized view if not exists mv223 as select info_type.id AS id, info_type.info AS info, movie_info.movie_id AS movie_id, movie_info.note AS note
from info_type, movie_info
 where (info_type.info = 'release dates') And (movie_info.info_type_id = info_type.id) And (movie_info.note like '%internet%')
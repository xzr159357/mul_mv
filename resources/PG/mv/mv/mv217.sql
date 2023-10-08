create materialized view if not exists mv217 as select info_type.info AS info, movie_info.movie_id AS movie_id, movie_info.note AS note
 from info_type,movie_info
 where (movie_info.info_type_id = info_type.id) And (info_type.info = 'release dates') And (info_type.id = movie_info.info_type_id) And (movie_info.note like '%internet%')
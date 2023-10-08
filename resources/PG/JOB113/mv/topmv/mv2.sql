create materialized view if not exists mv2 as select info_type.id AS id, info_type.info AS info, movie_info_idx.movie_id AS movie_id
 from movie_info_idx,info_type
 where (movie_info_idx.info_type_id = info_type.id) And (info_type.info = 'top 250 rank')
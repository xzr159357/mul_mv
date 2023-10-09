create materialized view if not exists mv615 as select info_type.id AS info_type_id_0, info_type.info AS info_type_info_1, kind_type.id AS kind_type_id_2, kind_type.kind AS kind, movie_info_idx.info AS movie_info_idx_info_4, movie_info_idx.movie_id AS movie_info_idx_movie_id_5, movie_link.link_type_id AS link_type_id, movie_link.movie_id AS movie_link_movie_id_7, title.production_year AS production_year, title.title AS title
 from movie_link,title,movie_info_idx,kind_type,info_type
 where (title.id = movie_link.linked_movie_id) And (title.id = movie_link.movie_id) And (title.id = movie_info_idx.movie_id) And (title.kind_id = kind_type.id) And (movie_info_idx.info_type_id = info_type.id) And (movie_info_idx.info < '3.5') And (kind_type.kind in ('tv series', 'episode')) And (info_type.info = 'rating')
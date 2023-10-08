create materialized view if not exists mv509 as select info_type.id AS info_type_id_0, info_type.info AS info_type_info_1, kind_type.id AS kind_type_id_2, kind_type.kind AS kind, movie_info_idx.info AS movie_info_idx_info_4, movie_info_idx.movie_id AS movie_id, movie_link.link_type_id AS link_type_id, movie_link.linked_movie_id AS linked_movie_id, title.production_year AS production_year, title.title AS title
 from movie_info_idx,title,info_type,kind_type,movie_link
 where (title.id = movie_info_idx.movie_id) And (movie_link.linked_movie_id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (movie_info_idx.info < '3.0') And (movie_link.linked_movie_id = title.id) And (kind_type.id = title.kind_id) And (info_type.info = 'rating') And (title.id = movie_link.movie_id)
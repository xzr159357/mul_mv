select info_type.id AS id, info_type.info AS info_type_info_1, movie_info_idx.info AS movie_info_idx_info_2, movie_info_idx.movie_id AS movie_id, movie_link.link_type_id AS link_type_id, title.kind_id AS kind_id, title.production_year AS production_year, title.title AS title
 from info_type,title,movie_info_idx,movie_link
 where (movie_info_idx.info_type_id = info_type.id) And (info_type.info = 'rating') And (title.id = movie_info_idx.movie_id) And (movie_link.linked_movie_id = title.id) And (movie_link.linked_movie_id = movie_info_idx.movie_id) And (movie_info_idx.info < '3.0') And (movie_info_idx.movie_id = movie_link.movie_id)
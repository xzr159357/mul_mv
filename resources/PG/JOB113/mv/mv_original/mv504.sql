select info_type.id AS info_type_id_0, info_type.info AS info_type_info_1, link_type.id AS link_type_id_2, link_type.link AS link, movie_companies.company_id AS company_id, movie_companies.movie_id AS movie_id, movie_info_idx.info AS movie_info_idx_info_6, movie_link.linked_movie_id AS linked_movie_id, title.kind_id AS kind_id, title.production_year AS production_year, title.title AS title
 from movie_info_idx,title,info_type,movie_companies,link_type,movie_link
 where (title.id = movie_info_idx.movie_id) And (movie_link.linked_movie_id = movie_info_idx.movie_id) And (movie_info_idx.movie_id = movie_link.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (movie_info_idx.info < '3.0') And (movie_link.linked_movie_id = title.id) And (movie_companies.movie_id = title.id) And (info_type.info = 'rating') And (movie_link.link_type_id = link_type.id) And (link_type.link in ('sequel', 'follows', 'followed by'))
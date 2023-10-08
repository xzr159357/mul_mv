select info_type.id AS info_type_id_0, info_type.info AS info_type_info_1, kind_type.id AS kind_type_id_2, kind_type.kind AS kind, link_type.id AS link_type_id_4, link_type.link AS link, movie_companies.company_id AS company_id, movie_companies.movie_id AS movie_companies_movie_id_7, movie_info_idx.info AS movie_info_idx_info_8, movie_link.linked_movie_id AS linked_movie_id, movie_link.movie_id AS movie_link_movie_id_10, title.production_year AS production_year, title.title AS title
 from link_type,movie_companies,movie_info_idx,movie_link,kind_type,info_type,title
 where (movie_link.link_type_id = link_type.id) And (link_type.link in ('sequel', 'follows', 'followed by')) And (movie_companies.movie_id = title.id) And (movie_info_idx.movie_id = title.id) And (movie_info_idx.movie_id = movie_link.movie_id) And (movie_info_idx.info < '3.5') And (info_type.id = movie_info_idx.info_type_id) And (title.id = movie_link.linked_movie_id) And (kind_type.id = title.kind_id)
create materialized view if not exists mv505 as select company_name.country_code AS country_code, company_name.id AS company_name_id_1, company_name.name AS name, info_type.id AS info_type_id_3, info_type.info AS info_type_info_4, link_type.id AS link_type_id_5, link_type.link AS link, movie_companies.movie_id AS movie_id, movie_info_idx.info AS movie_info_idx_info_8, movie_link.linked_movie_id AS linked_movie_id, title.kind_id AS kind_id, title.production_year AS production_year, title.title AS title
 from link_type,movie_info_idx,movie_companies,movie_link,info_type,title,company_name
 where (movie_link.link_type_id = link_type.id) And (link_type.link in ('sequel', 'follows', 'followed by')) And (title.id = movie_info_idx.movie_id) And (movie_link.linked_movie_id = movie_info_idx.movie_id) And (movie_info_idx.movie_id = movie_link.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (movie_info_idx.info < '3.0') And (movie_companies.movie_id = title.id) And (company_name.id = movie_companies.company_id) And (movie_link.linked_movie_id = title.id) And (info_type.info = 'rating')
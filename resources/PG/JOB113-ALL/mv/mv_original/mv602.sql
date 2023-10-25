select company_name.country_code AS country_code, company_name.id AS company_name_id_1, company_name.name AS name, info_type.id AS info_type_id_3, info_type.info AS info_type_info_4, kind_type.id AS kind_type_id_5, kind_type.kind AS kind, link_type.id AS link_type_id_7, link_type.link AS link, movie_companies.movie_id AS movie_companies_movie_id_9, movie_info_idx.info AS movie_info_idx_info_10, movie_link.movie_id AS movie_link_movie_id_11, title.production_year AS production_year, title.title AS title
from company_name, info_type, kind_type, link_type, movie_companies, movie_info_idx, movie_link, title
 where (company_name.country_code = '[us]') And (info_type.info = 'rating') And (kind_type.kind = 'tv series') And (link_type.id = movie_link.link_type_id) And (movie_companies.company_id = company_name.id) And (movie_companies.movie_id = title.id) And (movie_info_idx.info < '3.0') And (movie_info_idx.info_type_id = info_type.id) And (movie_info_idx.movie_id = movie_companies.movie_id) And (movie_info_idx.movie_id = title.id) And (title.id = movie_info_idx.movie_id) And (title.id = movie_link.linked_movie_id) And (title.kind_id = kind_type.id)
create materialized view if not exists mv609 as select company_name.country_code AS country_code, company_name.id AS company_name_id_1, company_name.name AS name, info_type.id AS info_type_id_3, info_type.info AS info_type_info_4, kind_type.id AS kind_type_id_5, kind_type.kind AS kind, movie_info_idx.info AS movie_info_idx_info_7, movie_link.link_type_id AS link_type_id, movie_link.movie_id AS movie_id, title.production_year AS production_year, title.title AS title
 from company_name,movie_link,title,movie_info_idx,kind_type,movie_companies,info_type
 where (movie_companies.company_id = company_name.id) And (company_name.country_code = '[nl]') And (movie_info_idx.movie_id = movie_link.linked_movie_id) And (title.kind_id = kind_type.id) And (title.id = movie_info_idx.movie_id) And (movie_companies.movie_id = movie_info_idx.movie_id) And (movie_info_idx.movie_id = movie_companies.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (movie_info_idx.info < '3.0') And (kind_type.kind = 'tv series') And (info_type.info = 'rating')
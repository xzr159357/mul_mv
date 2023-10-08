create materialized view if not exists mv169 as select company_name.country_code AS country_code, company_name.id AS company_name_id_1, company_name.name AS name, company_type.id AS company_type_id_3, company_type.kind AS kind, info_type.id AS info_type_id_5, info_type.info AS info_type_info_6, movie_companies.movie_id AS movie_id, movie_info.info AS movie_info_info_8, movie_info_idx.info AS movie_info_idx_info_9, title.production_year AS production_year, title.title AS title
 from company_type,movie_info_idx,title,movie_companies,info_type,movie_info,company_name
 where (movie_companies.company_type_id = company_type.id) And (company_type.kind = 'production companies') And (movie_companies.movie_id = movie_info_idx.movie_id) And (movie_info_idx.movie_id = title.id) And (movie_info_idx.info_type_id = info_type.id) And (movie_info_idx.info > '7.0') And (title.id = movie_companies.movie_id) And (movie_info.movie_id = title.id) And (company_name.id = movie_companies.company_id) And (info_type.id = movie_info.info_type_id) And (info_type.info = 'genres') And (info_type.info = 'rating') And (movie_info.info in ('Drama', 'Horror', 'Western', 'Family'))
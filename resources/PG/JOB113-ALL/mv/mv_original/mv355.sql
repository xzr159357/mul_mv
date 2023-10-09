select company_name.country_code AS country_code, company_name.id AS company_name_id_1, company_name.name AS name, info_type.id AS info_type_id_3, info_type.info AS info_type_info_4, keyword.id AS keyword_id_5, keyword.keyword AS keyword, kind_type.id AS kind_type_id_7, kind_type.kind AS kind, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_companies_movie_id_10, movie_info.info AS movie_info_info_11, movie_info.info_type_id AS info_type_id, movie_info_idx.info AS movie_info_idx_info_13, movie_keyword.movie_id AS movie_keyword_movie_id_14, title.production_year AS production_year, title.title AS title
 from company_name,movie_keyword,keyword,title,movie_info_idx,kind_type,movie_info,movie_companies,info_type
 where (company_name.id = movie_companies.company_id) And (movie_keyword.movie_id = title.id) And (keyword.id = movie_keyword.keyword_id) And (title.id = movie_info_idx.movie_id) And (movie_companies.movie_id = title.id) And (movie_info.movie_id = title.id) And (kind_type.id = title.kind_id) And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (movie_info_idx.info < '8.5') And (movie_info.info_type_id = info_type.id) And (movie_info.info in ('Sweden', 'Norway', 'Germany', 'Denmark', 'Swedish', 'Danish', 'Norwegian', 'German', 'USA', 'American')) And (info_type.info = 'countries') And (info_type.info = 'rating')
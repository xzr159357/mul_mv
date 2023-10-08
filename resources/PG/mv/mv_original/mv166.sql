select company_type.id AS company_type_id_0, company_type.kind AS kind, info_type.id AS info_type_id_2, info_type.info AS info_type_info_3, movie_companies.company_id AS company_id, movie_companies.movie_id AS movie_id, movie_info_idx.info AS movie_info_idx_info_6
 from info_type,movie_info_idx,company_type,movie_companies
 where (movie_info_idx.info_type_id = info_type.id) And (info_type.info = 'rating') And (movie_companies.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info > '7.0') And (movie_companies.company_type_id = company_type.id) And (company_type.kind = 'production companies')
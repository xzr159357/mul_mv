create materialized view if not exists mv159 as select company_type.id AS company_type_id_0, company_type.kind AS kind, info_type.id AS info_type_id_2, info_type.info AS info, movie_companies.company_id AS company_id, movie_companies.movie_id AS movie_id
 from info_type,movie_info_idx,company_type,movie_companies
 where (movie_info_idx.info_type_id = info_type.id) And (info_type.info = 'bottom 10 rank') And (movie_companies.movie_id = movie_info_idx.movie_id) And (movie_companies.company_type_id = company_type.id) And (company_type.kind IS NOT NULL)  And  (((company_type.kind = 'production companies')) Or ((company_type.kind = 'distributors')))
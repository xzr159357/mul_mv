create materialized view if not exists mv522 as select company_name.id AS company_name_id_0, company_name.name AS name, info_type.id AS info_type_id_2, info_type.info AS info_type_info_3, keyword.id AS keyword_id_4, keyword.keyword AS keyword, movie_companies.movie_id AS movie_id, movie_info_idx.info AS movie_info_idx_info_7
from company_name, info_type, keyword, movie_companies, movie_info_idx, movie_keyword
 where (company_name.id = movie_companies.company_id) And (info_type.info = 'votes') And (keyword.keyword in ('murder', 'violence', 'blood', 'gore', 'death', 'female-nudity', 'hospital')) And (movie_companies.movie_id = movie_keyword.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (movie_info_idx.movie_id = movie_companies.movie_id) And (movie_info_idx.movie_id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id)
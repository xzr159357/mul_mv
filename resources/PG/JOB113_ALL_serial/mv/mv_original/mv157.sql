select info_type.id AS id, info_type.info AS info_type_info_1, movie_companies.company_id AS company_id, movie_companies.company_type_id AS company_type_id, movie_companies.movie_id AS movie_id, movie_info_idx.info AS movie_info_idx_info_5
from info_type, movie_companies, movie_info_idx
 where (info_type.info = 'rating') And (movie_companies.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info > '7.0') And (movie_info_idx.info_type_id = info_type.id)
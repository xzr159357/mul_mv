create materialized view if not exists mv564 as select company_name.id AS company_name_id_0, company_name.name AS name, info_type.id AS info_type_id_2, info_type.info AS info_type_info_3, movie_companies.movie_id AS movie_id, movie_info.info AS movie_info_info_5, movie_info_idx.info AS movie_info_idx_info_6, movie_info_idx.info_type_id AS info_type_id
from company_name, info_type, movie_companies, movie_info, movie_info_idx
 where (company_name.id = movie_companies.company_id) And (info_type.info = 'genres') And (info_type.info = 'votes') And (movie_companies.movie_id = movie_info.movie_id) And (movie_info.info in ('Horror', 'Thriller')) And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id = info_type.id)
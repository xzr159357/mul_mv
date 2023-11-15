create materialized view if not exists mv524 as select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_id AS person_id, company_name.id AS company_name_id_3, company_name.name AS name, info_type.id AS info_type_id_5, info_type.info AS info_type_info_6, keyword.id AS keyword_id_7, keyword.keyword AS keyword, movie_info.info AS movie_info_info_9, movie_info.info_type_id AS info_type_id, movie_info_idx.info AS movie_info_idx_info_11
from cast_info, company_name, info_type, keyword, movie_companies, movie_info, movie_info_idx, movie_keyword
 where (cast_info.movie_id = movie_keyword.movie_id) And (company_name.id = movie_companies.company_id) And (info_type.info = 'votes') And (keyword.keyword in ('murder', 'violence', 'blood', 'gore', 'death', 'female-nudity', 'hospital')) And (movie_companies.movie_id = movie_keyword.movie_id) And (movie_info.movie_id = movie_keyword.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (movie_info_idx.movie_id = cast_info.movie_id) And (movie_info_idx.movie_id = movie_companies.movie_id) And (movie_info_idx.movie_id = movie_info.movie_id) And (movie_info_idx.movie_id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id)
create materialized view if not exists mv527 as select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_id AS person_id, company_name.id AS company_name_id_3, company_name.name AS company_name_name_4, info_type.id AS info_type_id_5, info_type.info AS info_type_info_6, keyword.id AS keyword_id_7, keyword.keyword AS keyword, movie_info.info AS movie_info_info_9, movie_info_idx.info AS movie_info_idx_info_10, movie_info_idx.info_type_id AS info_type_id, name.gender AS gender, name.name AS name_name_13, title.id AS title_id_14, title.title AS title
from cast_info, company_name, info_type, keyword, movie_companies, movie_info, movie_info_idx, movie_keyword, name, title
 where (cast_info.movie_id = movie_keyword.movie_id) And (company_name.id = movie_companies.company_id) And (info_type.info = 'genres') And (info_type.info = 'votes') And (keyword.keyword in ('murder', 'violence', 'blood', 'gore', 'death', 'female-nudity', 'hospital')) And (movie_companies.movie_id = movie_keyword.movie_id) And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = movie_keyword.movie_id) And (movie_info.movie_id = title.id) And (movie_info_idx.info_type_id = info_type.id) And (movie_info_idx.movie_id = cast_info.movie_id) And (movie_info_idx.movie_id = movie_companies.movie_id) And (movie_info_idx.movie_id = movie_info.movie_id) And (movie_info_idx.movie_id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id) And (name.id = cast_info.person_id) And (title.id = movie_info.movie_id) And (title.id = movie_keyword.movie_id)
select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_id AS person_id, company_name.id AS company_name_id_3, company_name.name AS company_name_name_4, info_type.id AS info_type_id_5, info_type.info AS info_type_info_6, movie_info.info AS movie_info_info_7, movie_info_idx.info AS movie_info_idx_info_8, movie_info_idx.info_type_id AS info_type_id, name.gender AS gender, name.name AS name_name_11
from cast_info, company_name, info_type, movie_companies, movie_info, movie_info_idx, name
 where (cast_info.movie_id = movie_info.movie_id) And (cast_info.note in ('(writer)', '(head writer)', '(written by)', '(story)', '(story editor)')) And (company_name.id = movie_companies.company_id) And (info_type.info = 'genres') And (info_type.info = 'votes') And (movie_companies.movie_id = movie_info.movie_id) And (movie_info.info in ('Horror', 'Thriller')) And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (name.id = cast_info.person_id)
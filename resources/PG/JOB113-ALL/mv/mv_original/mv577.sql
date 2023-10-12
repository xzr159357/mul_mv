select cast_info.movie_id AS cast_info_movie_id_0, cast_info.note AS cast_info_note_1, cast_info.person_id AS person_id, company_name.id AS company_name_id_3, company_name.name AS company_name_name_4, info_type.id AS info_type_id_5, info_type.info AS info_type_info_6, keyword.id AS keyword_id_7, keyword.keyword AS keyword, movie_companies.note AS movie_companies_note_9, movie_info.info AS movie_info_info_10, movie_info_idx.info AS movie_info_idx_info_11, movie_info_idx.info_type_id AS info_type_id, movie_keyword.movie_id AS movie_keyword_movie_id_13, name.gender AS gender, name.name AS name_name_15, title.production_year AS production_year, title.title AS title
from cast_info, company_name, info_type, keyword, movie_companies, movie_info, movie_info_idx, movie_keyword, name, title
 where (cast_info.movie_id = movie_info.movie_id) And (cast_info.note in ('(writer)', '(head writer)', '(written by)', '(story)', '(story editor)')) And (company_name.id = movie_companies.company_id) And (info_type.info = 'genres') And (info_type.info = 'votes') And (keyword.id = movie_keyword.keyword_id) And (movie_companies.movie_id = movie_info.movie_id) And (movie_companies.note like '%(Blu-ray)%') And (movie_info.info in ('Horror', 'Thriller')) And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = movie_companies.movie_id) And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info.movie_id = title.id) And (movie_info_idx.info_type_id = info_type.id) And (movie_info_idx.movie_id = movie_info.movie_id) And (movie_keyword.movie_id = title.id) And (name.id = cast_info.person_id) And (title.id = movie_info_idx.movie_id)
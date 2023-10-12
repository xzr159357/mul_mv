select cast_info.movie_id AS cast_info_movie_id_0, cast_info.note AS note, cast_info.person_id AS person_id, company_name.id AS company_name_id_3, company_name.name AS name, info_type.id AS info_type_id_5, info_type.info AS info_type_info_6, keyword.id AS keyword_id_7, keyword.keyword AS keyword, movie_info.info AS movie_info_info_9, movie_info_idx.info AS movie_info_idx_info_10, movie_info_idx.info_type_id AS info_type_id, movie_keyword.movie_id AS movie_keyword_movie_id_12, title.title AS title
from cast_info, company_name, info_type, keyword, movie_companies, movie_info, movie_info_idx, movie_keyword, title
 where (cast_info.movie_id = title.id) And (cast_info.note in ('(writer)', '(head writer)', '(written by)', '(story)', '(story editor)')) And (company_name.id = movie_companies.company_id) And (info_type.info = 'genres') And (info_type.info = 'votes') And (keyword.id = movie_keyword.keyword_id) And (movie_companies.movie_id = movie_info.movie_id) And (movie_info.info in ('Horror', 'Action', 'Sci-Fi', 'Thriller', 'Crime', 'War')) And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info.movie_id = title.id) And (movie_info_idx.info_type_id = info_type.id) And (movie_keyword.movie_id = title.id) And (title.id = movie_companies.movie_id)
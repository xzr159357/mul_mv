select cast_info.movie_id AS cast_info_movie_id_0, cast_info.note AS note, cast_info.person_id AS person_id, info_type.id AS info_type_id_3, info_type.info AS info_type_info_4, keyword.id AS keyword_id_5, keyword.keyword AS keyword, movie_info.info AS movie_info_info_7, movie_info.movie_id AS movie_info_movie_id_8, movie_info_idx.info AS movie_info_idx_info_9, movie_info_idx.info_type_id AS info_type_id, title.production_year AS production_year, title.title AS title
from cast_info, info_type, keyword, movie_info, movie_info_idx, movie_keyword, title
 where (cast_info.movie_id = title.id) And (cast_info.note in ('(writer)', '(head writer)', '(written by)', '(story)', '(story editor)')) And (info_type.info = 'genres') And (info_type.info = 'votes') And (keyword.id = movie_keyword.keyword_id) And (movie_info.info = 'Horror') And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info.movie_id = title.id) And (movie_info_idx.info_type_id = info_type.id) And (movie_keyword.movie_id = title.id) And (title.id = movie_keyword.movie_id)
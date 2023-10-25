select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_id AS person_id, info_type.id AS info_type_id_3, info_type.info AS info_type_info_4, keyword.id AS keyword_id_5, keyword.keyword AS keyword, movie_info.info AS movie_info_info_7, movie_info_idx.info AS movie_info_idx_info_8, movie_info_idx.info_type_id AS info_type_id, name.gender AS gender, name.name AS name, title.title AS title
from cast_info, info_type, keyword, movie_info, movie_info_idx, movie_keyword, name, title
 where (cast_info.movie_id = movie_info.movie_id) And (cast_info.note in ('(writer)', '(head writer)', '(written by)', '(story)', '(story editor)')) And (info_type.info = 'genres') And (info_type.info = 'votes') And (keyword.id = movie_keyword.keyword_id) And (movie_info.info = 'Horror') And (movie_info.info_type_id = info_type.id) And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info.movie_id = title.id) And (movie_info_idx.info_type_id = info_type.id) And (movie_keyword.movie_id = movie_info.movie_id) And (movie_keyword.movie_id = title.id) And (name.id = cast_info.person_id) And (title.id = movie_keyword.movie_id)
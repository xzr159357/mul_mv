select cast_info.movie_id AS cast_info_movie_id_0, cast_info.note AS note, cast_info.person_id AS person_id, info_type.id AS info_type_id_3, info_type.info AS info_type_info_4, keyword.id AS keyword_id_5, keyword.keyword AS keyword, movie_info.info AS movie_info_info_7, movie_info.info_type_id AS info_type_id, movie_info_idx.info AS movie_info_idx_info_9, movie_keyword.movie_id AS movie_keyword_movie_id_10
 from movie_keyword,cast_info,keyword,movie_info_idx,movie_info,info_type
 where (movie_keyword.movie_id = movie_info.movie_id) And (keyword.id = movie_keyword.keyword_id) And (cast_info.movie_id = movie_info.movie_id) And (cast_info.note in ('(writer)', '(head writer)', '(written by)', '(story)', '(story editor)')) And (movie_info.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (movie_info.info_type_id = info_type.id) And (movie_info.info = 'Horror') And (info_type.info = 'genres') And (info_type.info = 'votes')
create materialized view if not exists mv560 as select cast_info.movie_id AS cast_info_movie_id_0, cast_info.note AS note, cast_info.person_id AS person_id, comp_cast_type.id AS comp_cast_type_id_3, comp_cast_type.kind AS kind, complete_cast.movie_id AS complete_cast_movie_id_5, complete_cast.subject_id AS subject_id, info_type.id AS info_type_id_7, info_type.info AS info_type_info_8, keyword.id AS keyword_id_9, keyword.keyword AS keyword, movie_info.info AS movie_info_info_11, movie_info.info_type_id AS info_type_id, movie_info_idx.info AS movie_info_idx_info_13, movie_keyword.movie_id AS movie_keyword_movie_id_14, name.gender AS gender, name.name AS name, title.title AS title
 from name,movie_keyword,complete_cast,cast_info,keyword,title,movie_info_idx,movie_info,comp_cast_type,info_type
 where (name.id = cast_info.person_id) And (movie_keyword.movie_id = title.id) And (keyword.id = movie_keyword.keyword_id) And (movie_info.movie_id = complete_cast.movie_id) And (complete_cast.status_id = comp_cast_type.id) And (complete_cast.subject_id = comp_cast_type.id) And (cast_info.movie_id = title.id) And (cast_info.note in ('(writer)', '(head writer)', '(written by)', '(story)', '(story editor)')) And (title.id = movie_info.movie_id) And (movie_info_idx.movie_id = title.id) And (info_type.id = movie_info_idx.info_type_id) And (movie_info.info in ('Horror', 'Action', 'Sci-Fi', 'Thriller', 'Crime', 'War')) And (info_type.id = movie_info.info_type_id) And (comp_cast_type.kind = 'cast') And (comp_cast_type.kind = 'completeverified')
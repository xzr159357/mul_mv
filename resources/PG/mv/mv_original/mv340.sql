select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, cast_info.person_role_id AS person_role_id, char_name.name AS name, comp_cast_type.id AS comp_cast_type_id_4, comp_cast_type.kind AS kind, complete_cast.subject_id AS subject_id, info_type.id AS info_type_id_7, info_type.info AS info_type_info_8, keyword.id AS keyword_id_9, keyword.keyword AS keyword, movie_info_idx.info AS movie_info_idx_info_11
 from comp_cast_type,movie_info_idx,movie_keyword,info_type,name,char_name,complete_cast,cast_info,keyword
 where (complete_cast.status_id = comp_cast_type.id) And (comp_cast_type.kind like '%complete%') And (complete_cast.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (movie_keyword.movie_id = cast_info.movie_id) And (keyword.id = movie_keyword.keyword_id) And (info_type.info = 'rating') And (name.id = cast_info.person_id) And (char_name.id = cast_info.person_role_id) And (cast_info.movie_id = complete_cast.movie_id)
select cast_info.movie_id AS movie_id, cast_info.person_id AS person_id, cast_info.person_role_id AS person_role_id, char_name.name AS name, comp_cast_type.id AS comp_cast_type_id_4, comp_cast_type.kind AS kind, complete_cast.subject_id AS subject_id, info_type.id AS info_type_id_7, info_type.info AS info_type_info_8, movie_info_idx.info AS movie_info_idx_info_9
 from movie_info_idx,comp_cast_type,char_name,info_type,complete_cast,cast_info
 where (complete_cast.movie_id = movie_info_idx.movie_id) And (movie_info_idx.info_type_id = info_type.id) And (complete_cast.status_id = comp_cast_type.id) And (comp_cast_type.kind like '%complete%') And (char_name.id = cast_info.person_role_id) And (info_type.info = 'rating') And (cast_info.movie_id = complete_cast.movie_id)
select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_id AS person_id, comp_cast_type.id AS id, comp_cast_type.kind AS kind, complete_cast.status_id AS status_id, movie_info_idx.info AS info, movie_info_idx.info_type_id AS info_type_id
 from complete_cast,comp_cast_type,movie_info_idx,cast_info
 where (movie_info_idx.movie_id = complete_cast.movie_id) And (complete_cast.subject_id = comp_cast_type.id) And (complete_cast.status_id = comp_cast_type.id) And (comp_cast_type.kind = 'cast') And (comp_cast_type.kind = 'complete+verified') And (cast_info.movie_id = movie_info_idx.movie_id) And (cast_info.note in ('(writer)', '(head writer)', '(written by)', '(story)', '(story editor)'))
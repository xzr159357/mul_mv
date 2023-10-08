select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_id AS person_id, comp_cast_type.id AS id, comp_cast_type.kind AS kind, complete_cast.subject_id AS subject_id
 from cast_info,complete_cast,comp_cast_type
 where (cast_info.movie_id = complete_cast.movie_id) And (cast_info.note in ('(writer)', '(head writer)', '(written by)', '(story)', '(story editor)')) And (complete_cast.status_id = comp_cast_type.id) And (complete_cast.subject_id = comp_cast_type.id) And (comp_cast_type.kind in ('cast', 'crew')) And (comp_cast_type.kind = 'complete+verified')
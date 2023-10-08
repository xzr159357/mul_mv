select comp_cast_type.id AS id, comp_cast_type.kind AS kind, complete_cast.movie_id AS movie_id, complete_cast.status_id AS status_id
 from complete_cast,comp_cast_type
 where (complete_cast.subject_id = comp_cast_type.id) And (comp_cast_type.kind in ('cast', 'crew'))
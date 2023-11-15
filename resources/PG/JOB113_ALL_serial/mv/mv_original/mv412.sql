select comp_cast_type.id AS id, comp_cast_type.kind AS kind, complete_cast.movie_id AS movie_id, complete_cast.status_id AS status_id
from comp_cast_type, complete_cast
 where (comp_cast_type.kind = 'crew') And (complete_cast.subject_id = comp_cast_type.id)
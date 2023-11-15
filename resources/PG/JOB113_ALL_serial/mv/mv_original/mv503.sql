select comp_cast_type.id AS id, comp_cast_type.kind AS kind, complete_cast.movie_id AS movie_id, complete_cast.subject_id AS subject_id, title.production_year AS production_year, title.title AS title
from comp_cast_type, complete_cast, title
 where (comp_cast_type.kind = 'complete+verified') And (comp_cast_type.kind in ('cast', 'crew')) And (complete_cast.status_id = comp_cast_type.id) And (complete_cast.subject_id = comp_cast_type.id) And (title.id = complete_cast.movie_id)
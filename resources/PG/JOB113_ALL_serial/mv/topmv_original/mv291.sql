select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS comp_cast_type_kind_1, complete_cast.movie_id AS movie_id, complete_cast.subject_id AS subject_id, kind_type.id AS kind_type_id_4, kind_type.kind AS kind_type_kind_5, title.production_year AS production_year, title.title AS title
from comp_cast_type, complete_cast, kind_type, title
 where (comp_cast_type.kind = 'cast') And (comp_cast_type.kind like '%complete%') And (complete_cast.status_id = comp_cast_type.id) And (complete_cast.subject_id = comp_cast_type.id) And (kind_type.id = title.kind_id) And (title.id = complete_cast.movie_id)
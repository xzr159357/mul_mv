select comp_cast_type.id AS id, comp_cast_type.kind AS kind, complete_cast.movie_id AS movie_id, title.kind_id AS kind_id, title.production_year AS production_year, title.title AS title
from comp_cast_type, complete_cast, title
 where (comp_cast_type.kind = 'complete+verified') And (complete_cast.status_id = comp_cast_type.id) And (title.id = complete_cast.movie_id)
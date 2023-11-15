create materialized view if not exists mv316 as select comp_cast_type.id AS id, comp_cast_type.kind AS kind, complete_cast.movie_id AS movie_id, complete_cast.subject_id AS subject_id
from comp_cast_type, complete_cast
 where (comp_cast_type.kind = 'complete+verified') And (complete_cast.status_id = comp_cast_type.id)
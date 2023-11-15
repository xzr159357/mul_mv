select comp_cast_type.id AS id, comp_cast_type.kind AS kind, complete_cast.movie_id AS movie_id, complete_cast.subject_id AS subject_id, movie_info_idx.info AS info, movie_info_idx.info_type_id AS info_type_id
from comp_cast_type, complete_cast, movie_info_idx
 where (comp_cast_type.kind = 'cast') And (comp_cast_type.kind = 'complete+verified') And (complete_cast.status_id = comp_cast_type.id) And (complete_cast.subject_id = comp_cast_type.id) And (movie_info_idx.movie_id = complete_cast.movie_id)
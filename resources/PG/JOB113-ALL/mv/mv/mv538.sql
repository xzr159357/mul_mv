create materialized view if not exists mv538 as select cast_info.movie_id AS cast_info_movie_id_0, cast_info.note AS note, cast_info.person_id AS person_id, comp_cast_type.id AS id, comp_cast_type.kind AS kind, complete_cast.movie_id AS complete_cast_movie_id_5, complete_cast.subject_id AS subject_id, movie_info_idx.info AS info, movie_info_idx.info_type_id AS info_type_id, title.production_year AS production_year, title.title AS title
from cast_info, comp_cast_type, complete_cast, movie_info_idx, title
 where (cast_info.movie_id = title.id) And (cast_info.note in ('(writer)', '(head writer)', '(written by)', '(story)', '(story editor)')) And (comp_cast_type.kind = 'completeverified') And (comp_cast_type.kind in ('cast', 'crew')) And (complete_cast.status_id = comp_cast_type.id) And (complete_cast.subject_id = comp_cast_type.id) And (movie_info_idx.movie_id = complete_cast.movie_id) And (title.id = movie_info_idx.movie_id)
create materialized view if not exists mv451 as select cast_info.movie_id AS movie_id, cast_info.note AS note, cast_info.person_id AS person_id, cast_info.person_role_id AS person_role_id, cast_info.role_id AS role_id, comp_cast_type.id AS comp_cast_type_id_5, comp_cast_type.kind AS kind, complete_cast.subject_id AS subject_id, keyword.id AS keyword_id_8, keyword.keyword AS keyword, title.production_year AS production_year, title.title AS title
from cast_info, comp_cast_type, complete_cast, keyword, movie_keyword, title
 where (cast_info.movie_id = movie_keyword.movie_id) And (comp_cast_type.kind = 'cast') And (comp_cast_type.kind = 'complete+verified') And (complete_cast.status_id = comp_cast_type.id) And (complete_cast.subject_id = comp_cast_type.id) And (keyword.id = movie_keyword.keyword_id) And (movie_keyword.movie_id = title.id) And (title.id = cast_info.movie_id) And (title.id = complete_cast.movie_id) And (title.id = movie_keyword.movie_id)
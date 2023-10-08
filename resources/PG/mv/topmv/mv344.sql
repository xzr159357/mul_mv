create materialized view if not exists mv344 as select comp_cast_type.id AS id, comp_cast_type.kind AS kind, complete_cast.movie_id AS movie_id, complete_cast.subject_id AS subject_id
 from complete_cast,comp_cast_type
 where (complete_cast.status_id = comp_cast_type.id) And (comp_cast_type.kind = 'complete')
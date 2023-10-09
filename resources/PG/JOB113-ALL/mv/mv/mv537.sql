create materialized view if not exists mv537 as select comp_cast_type.id AS id, comp_cast_type.kind AS kind, complete_cast.movie_id AS movie_id, complete_cast.subject_id AS subject_id, movie_info_idx.info AS info, movie_info_idx.info_type_id AS info_type_id, title.production_year AS production_year, title.title AS title
 from movie_info_idx,comp_cast_type,complete_cast,title
 where (title.id = movie_info_idx.movie_id) And (movie_info_idx.movie_id = complete_cast.movie_id) And (complete_cast.status_id = comp_cast_type.id) And (complete_cast.subject_id = comp_cast_type.id) And (comp_cast_type.kind in ('cast', 'crew')) And (comp_cast_type.kind = 'completeverified')
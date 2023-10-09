select comp_cast_type.id AS id, comp_cast_type.kind AS kind, complete_cast.movie_id AS movie_id, complete_cast.status_id AS status_id, title.production_year AS production_year, title.title AS title
 from comp_cast_type,complete_cast,title
 where (complete_cast.subject_id = comp_cast_type.id) And (comp_cast_type.kind = 'cast') And (title.id = complete_cast.movie_id)
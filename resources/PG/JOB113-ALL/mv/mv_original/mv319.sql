select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS comp_cast_type_kind_1, complete_cast.movie_id AS movie_id, complete_cast.subject_id AS subject_id, kind_type.id AS kind_type_id_4, kind_type.kind AS kind_type_kind_5, movie_keyword.keyword_id AS keyword_id, title.production_year AS production_year, title.title AS title
 from movie_keyword,complete_cast,title,kind_type,comp_cast_type
 where (movie_keyword.movie_id = title.id) And (complete_cast.status_id = comp_cast_type.id) And (complete_cast.subject_id = comp_cast_type.id) And (title.id = complete_cast.movie_id) And (kind_type.id = title.kind_id) And (comp_cast_type.kind like '%complete%') And (comp_cast_type.kind = 'cast')
select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS kind, complete_cast.movie_id AS movie_id, complete_cast.subject_id AS subject_id, keyword.id AS keyword_id_4, keyword.keyword AS keyword, title.id AS title_id_6, title.production_year AS production_year, title.title AS title
from comp_cast_type, complete_cast, keyword, movie_keyword, title
 where (comp_cast_type.kind = 'cast') And (comp_cast_type.kind = 'complete+verified') And (complete_cast.status_id = comp_cast_type.id) And (complete_cast.subject_id = comp_cast_type.id) And (keyword.id = movie_keyword.keyword_id) And (movie_keyword.movie_id = complete_cast.movie_id) And (title.id = complete_cast.movie_id) And (title.id = movie_keyword.movie_id)
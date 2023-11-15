select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS kind, complete_cast.movie_id AS movie_id, complete_cast.subject_id AS subject_id, movie_companies.company_id AS company_id, title.id AS title_id_5, title.production_year AS production_year, title.title AS title
from comp_cast_type, complete_cast, movie_companies, title
 where (comp_cast_type.kind = 'cast') And (comp_cast_type.kind = 'complete+verified') And (complete_cast.status_id = comp_cast_type.id) And (complete_cast.subject_id = comp_cast_type.id) And (movie_companies.movie_id = complete_cast.movie_id) And (title.id = complete_cast.movie_id) And (title.id = movie_companies.movie_id)
select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS comp_cast_type_kind_1, complete_cast.movie_id AS movie_id, complete_cast.status_id AS status_id, keyword.id AS keyword_id_4, keyword.keyword AS keyword, kind_type.id AS kind_type_id_6, kind_type.kind AS kind_type_kind_7, title.production_year AS production_year, title.title AS title
 from comp_cast_type,movie_keyword,kind_type,title,complete_cast,keyword
 where (complete_cast.subject_id = comp_cast_type.id) And (comp_cast_type.kind = 'cast') And (title.id = movie_keyword.movie_id) And (complete_cast.movie_id = movie_keyword.movie_id) And (movie_keyword.keyword_id = keyword.id) And (kind_type.id = title.kind_id) And (keyword.keyword in ('superhero', 'marvel-comics', 'based-on-comic', 'tv-special', 'fight', 'violence', 'magnet', 'web', 'claw', 'laser'))
select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS kind, complete_cast.movie_id AS movie_id, complete_cast.status_id AS status_id, keyword.id AS keyword_id_4, keyword.keyword AS keyword, title.production_year AS production_year, title.title AS title
 from comp_cast_type,movie_keyword,title,complete_cast,keyword
 where (comp_cast_type.id = complete_cast.subject_id) And (movie_keyword.keyword_id = keyword.id) And (title.id = movie_keyword.movie_id) And (complete_cast.movie_id = title.id) And (comp_cast_type.id = complete_cast.status_id) And (keyword.keyword in ('murder', 'violence', 'blood', 'gore', 'death', 'female-nudity', 'hospital'))
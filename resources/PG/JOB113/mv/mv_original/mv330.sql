select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS comp_cast_type_kind_1, complete_cast.movie_id AS movie_id, complete_cast.subject_id AS subject_id, info_type.id AS info_type_id_4, info_type.info AS info_type_info_5, keyword.id AS keyword_id_6, keyword.keyword AS keyword, kind_type.id AS kind_type_id_8, kind_type.kind AS kind_type_kind_9, movie_info_idx.info AS movie_info_idx_info_10, title.id AS title_id_11, title.production_year AS production_year, title.title AS title
 from movie_info_idx,keyword,comp_cast_type,title,info_type,complete_cast,kind_type,movie_keyword
 where (movie_info_idx.info_type_id = info_type.id) And (movie_info_idx.movie_id = movie_keyword.movie_id) And (movie_info_idx.info > '8.0') And (movie_keyword.keyword_id = keyword.id) And (keyword.keyword in ('superhero', 'marvel-comics', 'based-on-comic', 'fight')) And (comp_cast_type.id = complete_cast.status_id) And (title.id = movie_keyword.movie_id) And (kind_type.id = title.kind_id) And (info_type.info = 'rating') And (complete_cast.movie_id = movie_keyword.movie_id) And (comp_cast_type.id = complete_cast.subject_id)
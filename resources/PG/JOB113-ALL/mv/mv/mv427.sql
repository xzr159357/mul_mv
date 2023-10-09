create materialized view if not exists mv427 as select comp_cast_type.id AS comp_cast_type_id_0, comp_cast_type.kind AS comp_cast_type_kind_1, complete_cast.movie_id AS complete_cast_movie_id_2, keyword.id AS keyword_id_3, keyword.keyword AS keyword, kind_type.id AS kind_type_id_5, kind_type.kind AS kind_type_kind_6, movie_info_idx.info AS info, movie_info_idx.info_type_id AS info_type_id, movie_keyword.movie_id AS movie_keyword_movie_id_9, title.production_year AS production_year, title.title AS title
 from movie_keyword,complete_cast,keyword,title,movie_info_idx,kind_type,comp_cast_type
 where (movie_keyword.movie_id = title.id) And (keyword.id = movie_keyword.keyword_id) And (comp_cast_type.id = complete_cast.status_id) And (complete_cast.subject_id = comp_cast_type.id) And (title.id = complete_cast.movie_id) And (movie_info_idx.movie_id = title.id) And (kind_type.id = title.kind_id) And (comp_cast_type.kind like '%complete%') And (comp_cast_type.kind = 'cast')